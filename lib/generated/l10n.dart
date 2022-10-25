// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:music_app/generated/intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',);
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',);
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `version`
  String get version {
    return Intl.message(
      'version',
      name: 'version',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `My trip`
  String get my_trip {
    return Intl.message(
      'My trip',
      name: 'my_trip',
      desc: '',
      args: [],
    );
  }

  /// `Wishlist`
  String get wish_list {
    return Intl.message(
      'Wishlist',
      name: 'wish_list',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Page`
  String get page {
    return Intl.message(
      'Page',
      name: 'page',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Lets explore the world`
  String get onboarding_1_title {
    return Intl.message(
      'Lets explore the world',
      name: 'onboarding_1_title',
      desc: '',
      args: [],
    );
  }

  /// `Visit tourist attractions`
  String get onboarding_2_title {
    return Intl.message(
      'Visit tourist attractions',
      name: 'onboarding_2_title',
      desc: '',
      args: [],
    );
  }

  /// `Get ready for next trip`
  String get onboarding_3_title {
    return Intl.message(
      'Get ready for next trip',
      name: 'onboarding_3_title',
      desc: '',
      args: [],
    );
  }

  /// `let's explore the world with us with just a few clicks`
  String get onboarding_1_subtitle {
    return Intl.message(
      'let\'s explore the world with us with just a few clicks',
      name: 'onboarding_1_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Find thousands of tourist destinations ready for you to visit`
  String get onboarding_2_subtitle {
    return Intl.message(
      'Find thousands of tourist destinations ready for you to visit',
      name: 'onboarding_2_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Find thousands of tourist destinations ready for you to visit`
  String get onboarding_3_subtitle {
    return Intl.message(
      'Find thousands of tourist destinations ready for you to visit',
      name: 'onboarding_3_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Get started`
  String get get_started {
    return Intl.message(
      'Get started',
      name: 'get_started',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password?`
  String get forgot_your_password {
    return Intl.message(
      'Forgot your password?',
      name: 'forgot_your_password',
      desc: '',
      args: [],
    );
  }

  /// `Input Your Email`
  String get input_your_email {
    return Intl.message(
      'Input Your Email',
      name: 'input_your_email',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password`
  String get forgot_password {
    return Intl.message(
      'Forgot password',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Create New Password`
  String get create_new_password {
    return Intl.message(
      'Create New Password',
      name: 'create_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Your password must include at least one symbol and be 8 or more characters long.`
  String get your_password_must_include {
    return Intl.message(
      'Your password must include at least one symbol and be 8 or more characters long.',
      name: 'your_password_must_include',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `First name`
  String get first_name {
    return Intl.message(
      'First name',
      name: 'first_name',
      desc: '',
      args: [],
    );
  }

  /// `Last name`
  String get last_name {
    return Intl.message(
      'Last name',
      name: 'last_name',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get create_account {
    return Intl.message(
      'Create Account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Create your account`
  String get create_your_account {
    return Intl.message(
      'Create your account',
      name: 'create_your_account',
      desc: '',
      args: [],
    );
  }

  /// `What's is your name?`
  String get your_name {
    return Intl.message(
      'What\'s is your name?',
      name: 'your_name',
      desc: '',
      args: [],
    );
  }

  /// `Input Email`
  String get input_email {
    return Intl.message(
      'Input Email',
      name: 'input_email',
      desc: '',
      args: [],
    );
  }

  /// `And, your email?`
  String get and_your_email {
    return Intl.message(
      'And, your email?',
      name: 'and_your_email',
      desc: '',
      args: [],
    );
  }

  /// `Create a password`
  String get create_a_password {
    return Intl.message(
      'Create a password',
      name: 'create_a_password',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get remember_me {
    return Intl.message(
      'Remember me',
      name: 'remember_me',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get sign_in {
    return Intl.message(
      'Sign In',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `OTP Verification`
  String get otp_verification {
    return Intl.message(
      'OTP Verification',
      name: 'otp_verification',
      desc: '',
      args: [],
    );
  }

  /// `After this you can explore any place you want, enjoy it!`
  String get you_can_explore_any_place {
    return Intl.message(
      'After this you can explore any place you want, enjoy it!',
      name: 'you_can_explore_any_place',
      desc: '',
      args: [],
    );
  }

  /// `Send code reload in`
  String get send_code_reload_in {
    return Intl.message(
      'Send code reload in',
      name: 'send_code_reload_in',
      desc: '',
      args: [],
    );
  }

  /// `Verification`
  String get verification {
    return Intl.message(
      'Verification',
      name: 'verification',
      desc: '',
      args: [],
    );
  }

  /// `Successfully created an account`
  String get successfully_created_an_account {
    return Intl.message(
      'Successfully created an account',
      name: 'successfully_created_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Let's Explore!`
  String get lets_explore {
    return Intl.message(
      'Let\'s Explore!',
      name: 'lets_explore',
      desc: '',
      args: [],
    );
  }

  /// `Beach`
  String get beach {
    return Intl.message(
      'Beach',
      name: 'beach',
      desc: '',
      args: [],
    );
  }

  /// `Where is your favorite place to explore?`
  String get where_is_favorite_place {
    return Intl.message(
      'Where is your favorite place to explore?',
      name: 'where_is_favorite_place',
      desc: '',
      args: [],
    );
  }

  /// `Camping`
  String get camping {
    return Intl.message(
      'Camping',
      name: 'camping',
      desc: '',
      args: [],
    );
  }

  /// `Fishing`
  String get fishing {
    return Intl.message(
      'Fishing',
      name: 'fishing',
      desc: '',
      args: [],
    );
  }

  /// `Forest`
  String get forest {
    return Intl.message(
      'Forest',
      name: 'forest',
      desc: '',
      args: [],
    );
  }

  /// `Mountain`
  String get mountain {
    return Intl.message(
      'Mountain',
      name: 'mountain',
      desc: '',
      args: [],
    );
  }

  /// `Ocean`
  String get ocean {
    return Intl.message(
      'Ocean',
      name: 'ocean',
      desc: '',
      args: [],
    );
  }

  /// `invalid password`
  String get invalid_password {
    return Intl.message(
      'invalid password',
      name: 'invalid_password',
      desc: '',
      args: [],
    );
  }

  /// `invalid email`
  String get invalid_email {
    return Intl.message(
      'invalid email',
      name: 'invalid_email',
      desc: '',
      args: [],
    );
  }

  /// `I'd like to received marketing and policy communucation from traver and its partners`
  String
      get received_marketing_and_policy_communucation_from_traver_and_its_partners {
    return Intl.message(
      'I\'d like to received marketing and policy communucation from traver and its partners',
      name:
          'received_marketing_and_policy_communucation_from_traver_and_its_partners',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
