import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_social_chat/core/constants/enums/auth_failure_enum.dart';
import 'package:flutter_social_chat/domain/models/auth/auth_user_model.dart';
import 'package:flutter_social_chat/core/interfaces/i_auth_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepository implements IAuthRepository {
  AuthRepository();

  final SupabaseClient _supabaseClient = Supabase.instance.client;

  @override
  Stream<AuthUserModel> get authStateChanges {
    return _supabaseClient.auth.onAuthStateChange.asyncMap((data) async {
      final session = data.session;
      final user = session?.user;
      if (user == null) return AuthUserModel.empty();
      
      final userId = user.id;
      final phoneNumber = user.phone ?? '';
      
      try {
        final response = await _supabaseClient
            .from('users')
            .select()
            .eq('id', userId)
            .maybeSingle();
            
        if (response != null) {
          final bool isOnboardingCompleted = response['is_onboarding_completed'] as bool? ?? false;
          final String? userName = response['display_name'] as String?;
          final String? photoUrl = response['photo_url'] as String?;
          
          return AuthUserModel(
            id: userId,
            phoneNumber: phoneNumber,
            isOnboardingCompleted: isOnboardingCompleted,
            userName: userName,
            photoUrl: photoUrl,
          );
        }
      } catch (e) {
        debugPrint('Error fetching user data from Supabase: $e');
      }
      
      return AuthUserModel(
        id: userId,
        phoneNumber: phoneNumber,
        isOnboardingCompleted: false,
        userName: user.userMetadata?['display_name'] as String?,
        photoUrl: user.userMetadata?['avatar_url'] as String?,
      );
    });
  }

  @override
  Future<Option<AuthUserModel>> getSignedInUser() async {
    final user = _supabaseClient.auth.currentUser;
    if (user == null) return none();
    
    final userId = user.id;
    final phoneNumber = user.phone ?? '';
    
    try {
      final response = await _supabaseClient
          .from('users')
          .select()
          .eq('id', userId)
          .maybeSingle();
          
      if (response != null) {
        final bool isOnboardingCompleted = response['is_onboarding_completed'] as bool? ?? false;
        final String? userName = response['display_name'] as String?;
        final String? photoUrl = response['photo_url'] as String?;
        return some(AuthUserModel(
          id: userId,
          phoneNumber: phoneNumber,
          isOnboardingCompleted: isOnboardingCompleted,
          userName: userName,
          photoUrl: photoUrl,
        ));
      }
    } catch (e) {
      debugPrint('Error getting signed in user data from Supabase: $e');
    }
    
    return some(AuthUserModel(
      id: userId,
      phoneNumber: phoneNumber,
      isOnboardingCompleted: false,
      userName: user.userMetadata?['display_name'] as String?,
      photoUrl: user.userMetadata?['avatar_url'] as String?,
    ));
  }

  @override
  Future<void> signOut() async {
    try {
      await _supabaseClient.auth.signOut();
    } catch (e) {
      debugPrint('Error signing out: $e');
    }
  }

  @override
  Stream<Either<AuthFailureEnum, (String, int?)>> signInWithPhoneNumber({
    required String phoneNumber,
    required Duration timeout,
    required int? resendToken,
  }) async* {
    try {
      await _supabaseClient.auth.signInWithOtp(
        phone: phoneNumber,
      );
      yield right((phoneNumber, null));
    } catch (e) {
      debugPrint('Error signing in with phone OTP: $e');
      yield left(AuthFailureEnum.serverError);
    }
  }

  @override
  Future<void> updateDisplayName({required String displayName}) async {
    await updateUserProfile(displayName: displayName);
  }

  @override
  Future<void> updatePhotoURL({required String photoURL}) async {
    await updateUserProfile(photoURL: photoURL);
  }

  @override
  Future<void> updateUserProfile({
    String? displayName,
    String? photoURL,
    bool? isOnboardingCompleted,
  }) async {
    final user = _supabaseClient.auth.currentUser;
    if (user == null) return;

    final Map<String, dynamic> updateData = {};

    if (displayName != null) {
      updateData['display_name'] = displayName;
    }

    if (photoURL != null) {
      updateData['photo_url'] = photoURL;
    }

    if (isOnboardingCompleted != null) {
      updateData['is_onboarding_completed'] = isOnboardingCompleted;
    }

    if (updateData.isNotEmpty) {
      try {
        updateData['last_updated'] = DateTime.now().toIso8601String();
        
        // Check if user record exists
        final response = await _supabaseClient
            .from('users')
            .select()
            .eq('id', user.id)
            .maybeSingle();

        if (response != null) {
          await _supabaseClient
              .from('users')
              .update(updateData)
              .eq('id', user.id);
        } else {
          // Insert complete data
          final insertData = {
            'id': user.id,
            'display_name': displayName ?? 'User',
            'phone_number': user.phone ?? '',
            'is_onboarding_completed': isOnboardingCompleted ?? false,
            'photo_url': photoURL,
            'created_at': DateTime.now().toIso8601String(),
            'last_updated': DateTime.now().toIso8601String(),
          };
          await _supabaseClient.from('users').insert(insertData);
        }
      } catch (e) {
        debugPrint('Error updating profile in Supabase: $e');
      }
    }
  }

  @override
  Future<Either<AuthFailureEnum, Unit>> verifySmsCode({
    required String smsCode,
    required String verificationId,
  }) async {
    try {
      final response = await _supabaseClient.auth.verifyOTP(
        phone: verificationId,
        token: smsCode,
        type: OtpType.sms,
      );

      final user = response.user;
      if (user != null) {
        try {
          // Create or update user row
          final userResponse = await _supabaseClient
              .from('users')
              .select()
              .eq('id', user.id)
              .maybeSingle();

          if (userResponse != null) {
            await _supabaseClient.from('users').update({
              'last_updated': DateTime.now().toIso8601String(),
            }).eq('id', user.id);
          } else {
            await _supabaseClient.from('users').insert({
              'id': user.id,
              'display_name': user.userMetadata?['display_name'] ?? 'User',
              'phone_number': user.phone ?? '',
              'is_onboarding_completed': false,
              'created_at': DateTime.now().toIso8601String(),
              'last_updated': DateTime.now().toIso8601String(),
            });
          }
        } catch (e) {
          debugPrint('Error saving user to database: $e');
        }
      }

      return right(unit);
    } catch (e) {
      debugPrint('Error verifying OTP: $e');
      return left(AuthFailureEnum.invalidVerificationCode);
    }
  }
}
