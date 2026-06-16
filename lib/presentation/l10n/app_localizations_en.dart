// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get chats => 'Chats';

  @override
  String get dashboard => 'Dashboard';

  @override
  String get profile => 'Profile';

  @override
  String get giveRelatedPermission =>
      'Please give related permission to use this feature.';

  @override
  String lastMessageOn(Object memberlastMessageTime) {
    return 'Last message on $memberlastMessageTime';
  }

  @override
  String get startNewConversation => 'Start a new conversation...';

  @override
  String get search => 'Search';

  @override
  String get searchSomeone => 'Search someone...';

  @override
  String get beDeepIntoTheConversation => 'Start a new conversation here';

  @override
  String get attachment => 'Attachment';

  @override
  String get createNewGroupChat => 'Create a new group chat!';

  @override
  String get createNewOneToOneChat => 'Create a new one to one chat!';

  @override
  String get privateChatOption => 'Private Chat';

  @override
  String get groupChatOption => 'Group Chat';

  @override
  String get groupName => 'Group Name';

  @override
  String get yourInspirationalGroupName => 'My inspirational group name is...';

  @override
  String get userNameCanNotBeAnEmpty => 'Username can not be an empty!';

  @override
  String get userNameCanNotBeLongerThanTwentyCharacters =>
      'Username can not be longer than twenty characters!';

  @override
  String get userNameCanNotBeShorterThanThreeCharacters =>
      'Username cannot be shorter than 3 characters';

  @override
  String get createYourProfile => 'Create your profile!';

  @override
  String get animatedText1 =>
      'Choose a unique username to stand out in group chats';

  @override
  String get animatedText2 =>
      'Adding a profile photo helps friends recognize you easily';

  @override
  String get animatedText3 =>
      'Your profile will be visible to all your contacts';

  @override
  String get animatedText4 =>
      'Complete your profile to unlock all features and connect with people';

  @override
  String get createdAtText => 'Created at';

  @override
  String get signIn => 'Sign In';

  @override
  String get signInWithPhoneNumber => 'Sign In With Phone Number';

  @override
  String get phoneNumber => 'Phone Number';

  @override
  String get smsInformationMessage =>
      'We will send you an SMS message to verify your phone number. Message and data rates may apply.';

  @override
  String get verification => 'Verification';

  @override
  String get confirmation => 'CONFIRMATION';

  @override
  String get confirmationInfo =>
      'Please enter the 6-digit code we just sent to ';

  @override
  String get confirm => 'Confirm';

  @override
  String get verifyCode => 'Verify Code';

  @override
  String get resendCode => 'RESEND CODE';

  @override
  String get codeResent => 'Code resent successfully';

  @override
  String get username => 'Username';

  @override
  String get serverError => 'Server Error!';

  @override
  String get tooManyRequests => 'Too Many Requests!';

  @override
  String get deviceNotSupported => 'Device Not Supported!';

  @override
  String get smsTimeout => 'SMS Timeout!';

  @override
  String get sessionExpired => 'Session Expired!';

  @override
  String get invalidVerificationCode => 'Invalid Verification Code!';

  @override
  String get continueText => 'Continue';

  @override
  String get phoneNumberRequired => 'Phone number is required';

  @override
  String get invalidPhoneNumber => 'Please enter a valid phone number';

  @override
  String get welcomeToSocialChat => 'Welcome to Social Chat';

  @override
  String get letsSetupYourProfile => 'Let\'s set up your profile';

  @override
  String get addYourDetails => 'Add your details';

  @override
  String get changePhoto => 'Change photo';

  @override
  String get addPhoto => 'Add photo';

  @override
  String get addPhotoOptional => 'Add photo (optional)';

  @override
  String get profilePhotoAdded => 'Profile photo added';

  @override
  String get chooseAnOption => 'Choose an option';

  @override
  String get chooseFromGallery => 'Choose from gallery';

  @override
  String get removePhoto => 'Remove photo';

  @override
  String errorSelectingImage(Object error) {
    return 'Error selecting image: $error';
  }

  @override
  String get tips => 'Tips';

  @override
  String get invalidUsername =>
      'Username can only contain letters, numbers, underscores and hyphens';

  @override
  String get usernameValidationMessage =>
      'Username must be between 3-20 characters with no special characters';

  @override
  String get appName => 'Flutter Social Chat';

  @override
  String get appTagline => 'Stay connected with friends and family';

  @override
  String get justAMoment => 'Just a moment';

  @override
  String get startingUp => 'Starting up';

  @override
  String get verifyingAccount => 'Verifying account';

  @override
  String get accountVerified => 'Account verified';

  @override
  String get loadingChats => 'Loading chats...';

  @override
  String get takingToChats => 'Taking you to your chats';

  @override
  String get signOut => 'Sign Out';

  @override
  String get signOutConfirmation => 'Are you sure you want to sign out?';

  @override
  String get cancel => 'Cancel';

  @override
  String get contactInformation => 'Contact Information';

  @override
  String get userId => 'User ID';

  @override
  String get lastActive => 'Last Active';

  @override
  String get accountStatus => 'Account Status';

  @override
  String get accountType => 'Account Type';

  @override
  String get accountActivity => 'Account Activity';

  @override
  String get activeStatus => 'Active';

  @override
  String get restrictedStatus => 'Restricted';

  @override
  String get normalStatus => 'Normal';

  @override
  String get regularUser => 'Regular User';

  @override
  String get accountDetails => 'Account Details';

  @override
  String get startGroupChat => 'Create Group Chat';

  @override
  String get startPrivateChat => 'Start Chat';

  @override
  String get chatButtonDisabled => 'Select users to start';

  @override
  String get readyToCreateGroup => 'Ready to create group!';

  @override
  String get selectUserToChat => 'Select a user to chat with';

  @override
  String get deselectUser => 'Tap to deselect';

  @override
  String get usersSelected => 'users selected';

  @override
  String get noUsersFound => 'No users found';

  @override
  String get failedToLoadUsers => 'Failed to load users';

  @override
  String get enough => 'Enough';

  @override
  String get min2Required => 'Min. 2 required';

  @override
  String get creatingGroup => 'Creating Group';

  @override
  String get startingChat => 'Starting Chat...';

  @override
  String get selectUsersAndNameGroup =>
      'Select at least 2 users and provide a valid group name';

  @override
  String get groupNameCannotBeEmpty => 'Group name cannot be empty';

  @override
  String get atLeast3CharactersRequired => 'At least 3 characters required';

  @override
  String get maximum20CharactersAllowed => 'Maximum 20 characters allowed';

  @override
  String get enterInspiringGroupName => 'Enter an inspiring group name';

  @override
  String get online => 'Online';

  @override
  String get yourMessages => 'Your messages';

  @override
  String get tapToChat => 'Tap below to chat with friends';

  @override
  String get newLabel => 'New';

  @override
  String get chatNotFound => 'Chat not found';

  @override
  String get chatNotExist => 'The chat you are looking for does not exist.';

  @override
  String get somethingWentWrong => 'Something went wrong';

  @override
  String get reconnectingToChat => 'Reconnecting to chat...';

  @override
  String get loadingProfile => 'Loading profile...';

  @override
  String get retry => 'Retry';

  @override
  String get connectingToChat => 'Connecting to chat...';

  @override
  String get unnamedGroup => 'Unnamed Group';

  @override
  String get sendMessageToStartConversation =>
      'Send a message to start the conversation';

  @override
  String get connectionFailed => 'Connection Failed!';
}
