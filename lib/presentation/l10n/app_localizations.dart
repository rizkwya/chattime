import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @chats.
  ///
  /// In en, this message translates to:
  /// **'Chats'**
  String get chats;

  /// No description provided for @dashboard.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get dashboard;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @giveRelatedPermission.
  ///
  /// In en, this message translates to:
  /// **'Please give related permission to use this feature.'**
  String get giveRelatedPermission;

  /// No description provided for @lastMessageOn.
  ///
  /// In en, this message translates to:
  /// **'Last message on {memberlastMessageTime}'**
  String lastMessageOn(Object memberlastMessageTime);

  /// No description provided for @startNewConversation.
  ///
  /// In en, this message translates to:
  /// **'Start a new conversation...'**
  String get startNewConversation;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @searchSomeone.
  ///
  /// In en, this message translates to:
  /// **'Search someone...'**
  String get searchSomeone;

  /// No description provided for @beDeepIntoTheConversation.
  ///
  /// In en, this message translates to:
  /// **'Start a new conversation here'**
  String get beDeepIntoTheConversation;

  /// No description provided for @attachment.
  ///
  /// In en, this message translates to:
  /// **'Attachment'**
  String get attachment;

  /// No description provided for @createNewGroupChat.
  ///
  /// In en, this message translates to:
  /// **'Create a new group chat!'**
  String get createNewGroupChat;

  /// No description provided for @createNewOneToOneChat.
  ///
  /// In en, this message translates to:
  /// **'Create a new one to one chat!'**
  String get createNewOneToOneChat;

  /// No description provided for @privateChatOption.
  ///
  /// In en, this message translates to:
  /// **'Private Chat'**
  String get privateChatOption;

  /// No description provided for @groupChatOption.
  ///
  /// In en, this message translates to:
  /// **'Group Chat'**
  String get groupChatOption;

  /// No description provided for @groupName.
  ///
  /// In en, this message translates to:
  /// **'Group Name'**
  String get groupName;

  /// No description provided for @yourInspirationalGroupName.
  ///
  /// In en, this message translates to:
  /// **'My inspirational group name is...'**
  String get yourInspirationalGroupName;

  /// No description provided for @userNameCanNotBeAnEmpty.
  ///
  /// In en, this message translates to:
  /// **'Username can not be an empty!'**
  String get userNameCanNotBeAnEmpty;

  /// No description provided for @userNameCanNotBeLongerThanTwentyCharacters.
  ///
  /// In en, this message translates to:
  /// **'Username can not be longer than twenty characters!'**
  String get userNameCanNotBeLongerThanTwentyCharacters;

  /// No description provided for @userNameCanNotBeShorterThanThreeCharacters.
  ///
  /// In en, this message translates to:
  /// **'Username cannot be shorter than 3 characters'**
  String get userNameCanNotBeShorterThanThreeCharacters;

  /// No description provided for @createYourProfile.
  ///
  /// In en, this message translates to:
  /// **'Create your profile!'**
  String get createYourProfile;

  /// No description provided for @animatedText1.
  ///
  /// In en, this message translates to:
  /// **'Choose a unique username to stand out in group chats'**
  String get animatedText1;

  /// No description provided for @animatedText2.
  ///
  /// In en, this message translates to:
  /// **'Adding a profile photo helps friends recognize you easily'**
  String get animatedText2;

  /// No description provided for @animatedText3.
  ///
  /// In en, this message translates to:
  /// **'Your profile will be visible to all your contacts'**
  String get animatedText3;

  /// No description provided for @animatedText4.
  ///
  /// In en, this message translates to:
  /// **'Complete your profile to unlock all features and connect with people'**
  String get animatedText4;

  /// No description provided for @createdAtText.
  ///
  /// In en, this message translates to:
  /// **'Created at'**
  String get createdAtText;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @signInWithPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Sign In With Phone Number'**
  String get signInWithPhoneNumber;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @smsInformationMessage.
  ///
  /// In en, this message translates to:
  /// **'We will send you an SMS message to verify your phone number. Message and data rates may apply.'**
  String get smsInformationMessage;

  /// No description provided for @verification.
  ///
  /// In en, this message translates to:
  /// **'Verification'**
  String get verification;

  /// No description provided for @confirmation.
  ///
  /// In en, this message translates to:
  /// **'CONFIRMATION'**
  String get confirmation;

  /// No description provided for @confirmationInfo.
  ///
  /// In en, this message translates to:
  /// **'Please enter the 6-digit code we just sent to '**
  String get confirmationInfo;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @verifyCode.
  ///
  /// In en, this message translates to:
  /// **'Verify Code'**
  String get verifyCode;

  /// No description provided for @resendCode.
  ///
  /// In en, this message translates to:
  /// **'RESEND CODE'**
  String get resendCode;

  /// No description provided for @codeResent.
  ///
  /// In en, this message translates to:
  /// **'Code resent successfully'**
  String get codeResent;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @serverError.
  ///
  /// In en, this message translates to:
  /// **'Server Error!'**
  String get serverError;

  /// No description provided for @tooManyRequests.
  ///
  /// In en, this message translates to:
  /// **'Too Many Requests!'**
  String get tooManyRequests;

  /// No description provided for @deviceNotSupported.
  ///
  /// In en, this message translates to:
  /// **'Device Not Supported!'**
  String get deviceNotSupported;

  /// No description provided for @smsTimeout.
  ///
  /// In en, this message translates to:
  /// **'SMS Timeout!'**
  String get smsTimeout;

  /// No description provided for @sessionExpired.
  ///
  /// In en, this message translates to:
  /// **'Session Expired!'**
  String get sessionExpired;

  /// No description provided for @invalidVerificationCode.
  ///
  /// In en, this message translates to:
  /// **'Invalid Verification Code!'**
  String get invalidVerificationCode;

  /// No description provided for @continueText.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText;

  /// No description provided for @phoneNumberRequired.
  ///
  /// In en, this message translates to:
  /// **'Phone number is required'**
  String get phoneNumberRequired;

  /// No description provided for @invalidPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid phone number'**
  String get invalidPhoneNumber;

  /// No description provided for @welcomeToSocialChat.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Social Chat'**
  String get welcomeToSocialChat;

  /// No description provided for @letsSetupYourProfile.
  ///
  /// In en, this message translates to:
  /// **'Let\'s set up your profile'**
  String get letsSetupYourProfile;

  /// No description provided for @addYourDetails.
  ///
  /// In en, this message translates to:
  /// **'Add your details'**
  String get addYourDetails;

  /// No description provided for @changePhoto.
  ///
  /// In en, this message translates to:
  /// **'Change photo'**
  String get changePhoto;

  /// No description provided for @addPhoto.
  ///
  /// In en, this message translates to:
  /// **'Add photo'**
  String get addPhoto;

  /// No description provided for @addPhotoOptional.
  ///
  /// In en, this message translates to:
  /// **'Add photo (optional)'**
  String get addPhotoOptional;

  /// No description provided for @profilePhotoAdded.
  ///
  /// In en, this message translates to:
  /// **'Profile photo added'**
  String get profilePhotoAdded;

  /// No description provided for @chooseAnOption.
  ///
  /// In en, this message translates to:
  /// **'Choose an option'**
  String get chooseAnOption;

  /// No description provided for @chooseFromGallery.
  ///
  /// In en, this message translates to:
  /// **'Choose from gallery'**
  String get chooseFromGallery;

  /// No description provided for @removePhoto.
  ///
  /// In en, this message translates to:
  /// **'Remove photo'**
  String get removePhoto;

  /// No description provided for @errorSelectingImage.
  ///
  /// In en, this message translates to:
  /// **'Error selecting image: {error}'**
  String errorSelectingImage(Object error);

  /// No description provided for @tips.
  ///
  /// In en, this message translates to:
  /// **'Tips'**
  String get tips;

  /// No description provided for @invalidUsername.
  ///
  /// In en, this message translates to:
  /// **'Username can only contain letters, numbers, underscores and hyphens'**
  String get invalidUsername;

  /// No description provided for @usernameValidationMessage.
  ///
  /// In en, this message translates to:
  /// **'Username must be between 3-20 characters with no special characters'**
  String get usernameValidationMessage;

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Flutter Social Chat'**
  String get appName;

  /// No description provided for @appTagline.
  ///
  /// In en, this message translates to:
  /// **'Stay connected with friends and family'**
  String get appTagline;

  /// No description provided for @justAMoment.
  ///
  /// In en, this message translates to:
  /// **'Just a moment'**
  String get justAMoment;

  /// No description provided for @startingUp.
  ///
  /// In en, this message translates to:
  /// **'Starting up'**
  String get startingUp;

  /// No description provided for @verifyingAccount.
  ///
  /// In en, this message translates to:
  /// **'Verifying account'**
  String get verifyingAccount;

  /// No description provided for @accountVerified.
  ///
  /// In en, this message translates to:
  /// **'Account verified'**
  String get accountVerified;

  /// No description provided for @loadingChats.
  ///
  /// In en, this message translates to:
  /// **'Loading chats...'**
  String get loadingChats;

  /// No description provided for @takingToChats.
  ///
  /// In en, this message translates to:
  /// **'Taking you to your chats'**
  String get takingToChats;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get signOut;

  /// No description provided for @signOutConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to sign out?'**
  String get signOutConfirmation;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @contactInformation.
  ///
  /// In en, this message translates to:
  /// **'Contact Information'**
  String get contactInformation;

  /// No description provided for @userId.
  ///
  /// In en, this message translates to:
  /// **'User ID'**
  String get userId;

  /// No description provided for @lastActive.
  ///
  /// In en, this message translates to:
  /// **'Last Active'**
  String get lastActive;

  /// No description provided for @accountStatus.
  ///
  /// In en, this message translates to:
  /// **'Account Status'**
  String get accountStatus;

  /// No description provided for @accountType.
  ///
  /// In en, this message translates to:
  /// **'Account Type'**
  String get accountType;

  /// No description provided for @accountActivity.
  ///
  /// In en, this message translates to:
  /// **'Account Activity'**
  String get accountActivity;

  /// No description provided for @activeStatus.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get activeStatus;

  /// No description provided for @restrictedStatus.
  ///
  /// In en, this message translates to:
  /// **'Restricted'**
  String get restrictedStatus;

  /// No description provided for @normalStatus.
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get normalStatus;

  /// No description provided for @regularUser.
  ///
  /// In en, this message translates to:
  /// **'Regular User'**
  String get regularUser;

  /// No description provided for @accountDetails.
  ///
  /// In en, this message translates to:
  /// **'Account Details'**
  String get accountDetails;

  /// No description provided for @startGroupChat.
  ///
  /// In en, this message translates to:
  /// **'Create Group Chat'**
  String get startGroupChat;

  /// No description provided for @startPrivateChat.
  ///
  /// In en, this message translates to:
  /// **'Start Chat'**
  String get startPrivateChat;

  /// No description provided for @chatButtonDisabled.
  ///
  /// In en, this message translates to:
  /// **'Select users to start'**
  String get chatButtonDisabled;

  /// No description provided for @readyToCreateGroup.
  ///
  /// In en, this message translates to:
  /// **'Ready to create group!'**
  String get readyToCreateGroup;

  /// No description provided for @selectUserToChat.
  ///
  /// In en, this message translates to:
  /// **'Select a user to chat with'**
  String get selectUserToChat;

  /// No description provided for @deselectUser.
  ///
  /// In en, this message translates to:
  /// **'Tap to deselect'**
  String get deselectUser;

  /// No description provided for @usersSelected.
  ///
  /// In en, this message translates to:
  /// **'users selected'**
  String get usersSelected;

  /// No description provided for @noUsersFound.
  ///
  /// In en, this message translates to:
  /// **'No users found'**
  String get noUsersFound;

  /// No description provided for @failedToLoadUsers.
  ///
  /// In en, this message translates to:
  /// **'Failed to load users'**
  String get failedToLoadUsers;

  /// No description provided for @enough.
  ///
  /// In en, this message translates to:
  /// **'Enough'**
  String get enough;

  /// No description provided for @min2Required.
  ///
  /// In en, this message translates to:
  /// **'Min. 2 required'**
  String get min2Required;

  /// No description provided for @creatingGroup.
  ///
  /// In en, this message translates to:
  /// **'Creating Group'**
  String get creatingGroup;

  /// No description provided for @startingChat.
  ///
  /// In en, this message translates to:
  /// **'Starting Chat...'**
  String get startingChat;

  /// No description provided for @selectUsersAndNameGroup.
  ///
  /// In en, this message translates to:
  /// **'Select at least 2 users and provide a valid group name'**
  String get selectUsersAndNameGroup;

  /// No description provided for @groupNameCannotBeEmpty.
  ///
  /// In en, this message translates to:
  /// **'Group name cannot be empty'**
  String get groupNameCannotBeEmpty;

  /// No description provided for @atLeast3CharactersRequired.
  ///
  /// In en, this message translates to:
  /// **'At least 3 characters required'**
  String get atLeast3CharactersRequired;

  /// No description provided for @maximum20CharactersAllowed.
  ///
  /// In en, this message translates to:
  /// **'Maximum 20 characters allowed'**
  String get maximum20CharactersAllowed;

  /// No description provided for @enterInspiringGroupName.
  ///
  /// In en, this message translates to:
  /// **'Enter an inspiring group name'**
  String get enterInspiringGroupName;

  /// No description provided for @online.
  ///
  /// In en, this message translates to:
  /// **'Online'**
  String get online;

  /// No description provided for @yourMessages.
  ///
  /// In en, this message translates to:
  /// **'Your messages'**
  String get yourMessages;

  /// No description provided for @tapToChat.
  ///
  /// In en, this message translates to:
  /// **'Tap below to chat with friends'**
  String get tapToChat;

  /// No description provided for @newLabel.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get newLabel;

  /// No description provided for @chatNotFound.
  ///
  /// In en, this message translates to:
  /// **'Chat not found'**
  String get chatNotFound;

  /// No description provided for @chatNotExist.
  ///
  /// In en, this message translates to:
  /// **'The chat you are looking for does not exist.'**
  String get chatNotExist;

  /// No description provided for @somethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get somethingWentWrong;

  /// No description provided for @reconnectingToChat.
  ///
  /// In en, this message translates to:
  /// **'Reconnecting to chat...'**
  String get reconnectingToChat;

  /// No description provided for @loadingProfile.
  ///
  /// In en, this message translates to:
  /// **'Loading profile...'**
  String get loadingProfile;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @connectingToChat.
  ///
  /// In en, this message translates to:
  /// **'Connecting to chat...'**
  String get connectingToChat;

  /// No description provided for @unnamedGroup.
  ///
  /// In en, this message translates to:
  /// **'Unnamed Group'**
  String get unnamedGroup;

  /// No description provided for @sendMessageToStartConversation.
  ///
  /// In en, this message translates to:
  /// **'Send a message to start the conversation'**
  String get sendMessageToStartConversation;

  /// No description provided for @connectionFailed.
  ///
  /// In en, this message translates to:
  /// **'Connection Failed!'**
  String get connectionFailed;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
