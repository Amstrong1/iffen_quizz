// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

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
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
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
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Sign in now`
  String get sign_in_now {
    return Intl.message(
      'Sign in now',
      name: 'sign_in_now',
      desc: '',
      args: [],
    );
  }

  /// `Enter Phone Number`
  String get enter_phone_number {
    return Intl.message(
      'Enter Phone Number',
      name: 'enter_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continuee {
    return Intl.message(
      'Continue',
      name: 'continuee',
      desc: '',
      args: [],
    );
  }

  /// `Or continue with`
  String get or_continue_with {
    return Intl.message(
      'Or continue with',
      name: 'or_continue_with',
      desc: '',
      args: [],
    );
  }

  /// `Facebook`
  String get facebook {
    return Intl.message(
      'Facebook',
      name: 'facebook',
      desc: '',
      args: [],
    );
  }

  /// `Google`
  String get google {
    return Intl.message(
      'Google',
      name: 'google',
      desc: '',
      args: [],
    );
  }

  /// `Not registered yet?`
  String get not_registered_yet {
    return Intl.message(
      'Not registered yet?',
      name: 'not_registered_yet',
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

  /// `Select Your Character`
  String get select_your_character {
    return Intl.message(
      'Select Your Character',
      name: 'select_your_character',
      desc: '',
      args: [],
    );
  }

  /// `Enter Full Name`
  String get enter_full_name {
    return Intl.message(
      'Enter Full Name',
      name: 'enter_full_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter Email Address`
  String get enter_email_address {
    return Intl.message(
      'Enter Email Address',
      name: 'enter_email_address',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get already_have_an_account {
    return Intl.message(
      'Already have an account?',
      name: 'already_have_an_account',
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

  /// `Enter OTP shared on phone number`
  String get enter_otp_shared {
    return Intl.message(
      'Enter OTP shared on phone number',
      name: 'enter_otp_shared',
      desc: '',
      args: [],
    );
  }

  /// `Enter verification code`
  String get enter_verification_code {
    return Intl.message(
      'Enter verification code',
      name: 'enter_verification_code',
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

  /// `Resend`
  String get resend {
    return Intl.message(
      'Resend',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get edit_profile {
    return Intl.message(
      'Edit Profile',
      name: 'edit_profile',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacy_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Followers`
  String get followers {
    return Intl.message(
      'Followers',
      name: 'followers',
      desc: '',
      args: [],
    );
  }

  /// `Following`
  String get following {
    return Intl.message(
      'Following',
      name: 'following',
      desc: '',
      args: [],
    );
  }

  /// `This week`
  String get this_week {
    return Intl.message(
      'This week',
      name: 'this_week',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Correct Meter`
  String get correct_meter {
    return Intl.message(
      'Correct Meter',
      name: 'correct_meter',
      desc: '',
      args: [],
    );
  }

  /// `Total Que`
  String get total_que {
    return Intl.message(
      'Total Que',
      name: 'total_que',
      desc: '',
      args: [],
    );
  }

  /// `Correct`
  String get correct {
    return Intl.message(
      'Correct',
      name: 'correct',
      desc: '',
      args: [],
    );
  }

  /// `Wrong`
  String get wrong {
    return Intl.message(
      'Wrong',
      name: 'wrong',
      desc: '',
      args: [],
    );
  }

  /// `Skipped`
  String get skipped {
    return Intl.message(
      'Skipped',
      name: 'skipped',
      desc: '',
      args: [],
    );
  }

  /// `Quiz Played`
  String get quiz_played {
    return Intl.message(
      'Quiz Played',
      name: 'quiz_played',
      desc: '',
      args: [],
    );
  }

  /// `Coin Balance`
  String get coin_balance {
    return Intl.message(
      'Coin Balance',
      name: 'coin_balance',
      desc: '',
      args: [],
    );
  }

  /// `My Profile`
  String get my_profile {
    return Intl.message(
      'My Profile',
      name: 'my_profile',
      desc: '',
      args: [],
    );
  }

  /// `Change Avatar`
  String get change_avatar {
    return Intl.message(
      'Change Avatar',
      name: 'change_avatar',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Follow`
  String get follow {
    return Intl.message(
      'Follow',
      name: 'follow',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policies`
  String get privacy_policies {
    return Intl.message(
      'Privacy Policies',
      name: 'privacy_policies',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Use`
  String get terms_of_use {
    return Intl.message(
      'Terms of Use',
      name: 'terms_of_use',
      desc: '',
      args: [],
    );
  }

  /// `App Language`
  String get app_language {
    return Intl.message(
      'App Language',
      name: 'app_language',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `ON`
  String get on {
    return Intl.message(
      'ON',
      name: 'on',
      desc: '',
      args: [],
    );
  }

  /// `App Sound`
  String get app_sound {
    return Intl.message(
      'App Sound',
      name: 'app_sound',
      desc: '',
      args: [],
    );
  }

  /// `SPACE`
  String get space {
    return Intl.message(
      'SPACE',
      name: 'space',
      desc: '',
      args: [],
    );
  }

  /// `SPORTS`
  String get sports {
    return Intl.message(
      'SPORTS',
      name: 'sports',
      desc: '',
      args: [],
    );
  }

  /// `HISTORY`
  String get history {
    return Intl.message(
      'HISTORY',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `MATHS`
  String get maths {
    return Intl.message(
      'MATHS',
      name: 'maths',
      desc: '',
      args: [],
    );
  }

  /// `Solo Made`
  String get solo_made {
    return Intl.message(
      'Solo Made',
      name: 'solo_made',
      desc: '',
      args: [],
    );
  }

  /// `Multiplayer Mode`
  String get multiplayer_mode {
    return Intl.message(
      'Multiplayer Mode',
      name: 'multiplayer_mode',
      desc: '',
      args: [],
    );
  }

  /// `1 Vs. 1 Mode`
  String get oneVOne {
    return Intl.message(
      '1 Vs. 1 Mode',
      name: 'oneVOne',
      desc: '',
      args: [],
    );
  }

  /// `Explore Categories`
  String get explore_categories {
    return Intl.message(
      'Explore Categories',
      name: 'explore_categories',
      desc: '',
      args: [],
    );
  }

  /// `Start Random Quiz`
  String get start_random_quiz {
    return Intl.message(
      'Start Random Quiz',
      name: 'start_random_quiz',
      desc: '',
      args: [],
    );
  }

  /// `Select Quiz`
  String get select_quiz {
    return Intl.message(
      'Select Quiz',
      name: 'select_quiz',
      desc: '',
      args: [],
    );
  }

  /// `START`
  String get start {
    return Intl.message(
      'START',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `1 vs. 1 Quiz`
  String get oneVOneQuiz {
    return Intl.message(
      '1 vs. 1 Quiz',
      name: 'oneVOneQuiz',
      desc: '',
      args: [],
    );
  }

  /// `Reward`
  String get reward {
    return Intl.message(
      'Reward',
      name: 'reward',
      desc: '',
      args: [],
    );
  }

  /// `Entry`
  String get entry {
    return Intl.message(
      'Entry',
      name: 'entry',
      desc: '',
      args: [],
    );
  }

  /// `Highest Correct`
  String get highest_correct {
    return Intl.message(
      'Highest Correct',
      name: 'highest_correct',
      desc: '',
      args: [],
    );
  }

  /// `Invite you to play`
  String get invite_you_to_play {
    return Intl.message(
      'Invite you to play',
      name: 'invite_you_to_play',
      desc: '',
      args: [],
    );
  }

  /// `Multiplayer Quiz`
  String get multiplayer_quiz {
    return Intl.message(
      'Multiplayer Quiz',
      name: 'multiplayer_quiz',
      desc: '',
      args: [],
    );
  }

  /// `Join Quiz`
  String get join_quiz {
    return Intl.message(
      'Join Quiz',
      name: 'join_quiz',
      desc: '',
      args: [],
    );
  }

  /// `Decline`
  String get decline {
    return Intl.message(
      'Decline',
      name: 'decline',
      desc: '',
      args: [],
    );
  }

  /// `Search Quiz Categories`
  String get search_quiz_categories {
    return Intl.message(
      'Search Quiz Categories',
      name: 'search_quiz_categories',
      desc: '',
      args: [],
    );
  }

  /// `Invite Friends`
  String get invite_friends {
    return Intl.message(
      'Invite Friends',
      name: 'invite_friends',
      desc: '',
      args: [],
    );
  }

  /// `Invite`
  String get invite {
    return Intl.message(
      'Invite',
      name: 'invite',
      desc: '',
      args: [],
    );
  }

  /// `Start Quiz`
  String get start_quiz {
    return Intl.message(
      'Start Quiz',
      name: 'start_quiz',
      desc: '',
      args: [],
    );
  }

  /// `General Knowledge`
  String get general_knowledge {
    return Intl.message(
      'General Knowledge',
      name: 'general_knowledge',
      desc: '',
      args: [],
    );
  }

  /// `France`
  String get france {
    return Intl.message(
      'France',
      name: 'france',
      desc: '',
      args: [],
    );
  }

  /// `Norway`
  String get norway {
    return Intl.message(
      'Norway',
      name: 'norway',
      desc: '',
      args: [],
    );
  }

  /// `Netherland`
  String get netherland {
    return Intl.message(
      'Netherland',
      name: 'netherland',
      desc: '',
      args: [],
    );
  }

  /// `Italy`
  String get italy {
    return Intl.message(
      'Italy',
      name: 'italy',
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

  /// `Quiz Room`
  String get quiz_room {
    return Intl.message(
      'Quiz Room',
      name: 'quiz_room',
      desc: '',
      args: [],
    );
  }

  /// `Solo Quiz`
  String get solo_quiz {
    return Intl.message(
      'Solo Quiz',
      name: 'solo_quiz',
      desc: '',
      args: [],
    );
  }

  /// `1 vs 1 Quiz`
  String get oneVsOneQuiz {
    return Intl.message(
      '1 vs 1 Quiz',
      name: 'oneVsOneQuiz',
      desc: '',
      args: [],
    );
  }

  /// `Play quiz competition with real person.`
  String get play_quiz_competition {
    return Intl.message(
      'Play quiz competition with real person.',
      name: 'play_quiz_competition',
      desc: '',
      args: [],
    );
  }

  /// `Let's have a knowledge battle.`
  String get lets_have_a_knowledge_battle {
    return Intl.message(
      'Let\'s have a knowledge battle.',
      name: 'lets_have_a_knowledge_battle',
      desc: '',
      args: [],
    );
  }

  /// `Play Quiz with`
  String get play_quiz_with {
    return Intl.message(
      'Play Quiz with',
      name: 'play_quiz_with',
      desc: '',
      args: [],
    );
  }

  /// `Friends`
  String get friends {
    return Intl.message(
      'Friends',
      name: 'friends',
      desc: '',
      args: [],
    );
  }

  /// `Random User`
  String get random_user {
    return Intl.message(
      'Random User',
      name: 'random_user',
      desc: '',
      args: [],
    );
  }

  /// `Quiz Summary`
  String get quiz_summary {
    return Intl.message(
      'Quiz Summary',
      name: 'quiz_summary',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations!`
  String get congratulations {
    return Intl.message(
      'Congratulations!',
      name: 'congratulations',
      desc: '',
      args: [],
    );
  }

  /// `You've scored`
  String get you_scored {
    return Intl.message(
      'You\'ve scored',
      name: 'you_scored',
      desc: '',
      args: [],
    );
  }

  /// `points`
  String get points {
    return Intl.message(
      'points',
      name: 'points',
      desc: '',
      args: [],
    );
  }

  /// `Standings`
  String get standings {
    return Intl.message(
      'Standings',
      name: 'standings',
      desc: '',
      args: [],
    );
  }

  /// `Summary`
  String get summary {
    return Intl.message(
      'Summary',
      name: 'summary',
      desc: '',
      args: [],
    );
  }

  /// `Play again`
  String get play_again {
    return Intl.message(
      'Play again',
      name: 'play_again',
      desc: '',
      args: [],
    );
  }

  /// `Rank`
  String get rank {
    return Intl.message(
      'Rank',
      name: 'rank',
      desc: '',
      args: [],
    );
  }

  /// `Players`
  String get players {
    return Intl.message(
      'Players',
      name: 'players',
      desc: '',
      args: [],
    );
  }

  /// `Won`
  String get won {
    return Intl.message(
      'Won',
      name: 'won',
      desc: '',
      args: [],
    );
  }

  /// `Question`
  String get question {
    return Intl.message(
      'Question',
      name: 'question',
      desc: '',
      args: [],
    );
  }

  /// `Select Category`
  String get select_category {
    return Intl.message(
      'Select Category',
      name: 'select_category',
      desc: '',
      args: [],
    );
  }

  /// `Correct all to win.`
  String get correct_all_to_win {
    return Intl.message(
      'Correct all to win.',
      name: 'correct_all_to_win',
      desc: '',
      args: [],
    );
  }

  /// `Correct Win`
  String get correct_win {
    return Intl.message(
      'Correct Win',
      name: 'correct_win',
      desc: '',
      args: [],
    );
  }

  /// `Leaderboard`
  String get leaderboard {
    return Intl.message(
      'Leaderboard',
      name: 'leaderboard',
      desc: '',
      args: [],
    );
  }

  /// `All Time`
  String get all_time {
    return Intl.message(
      'All Time',
      name: 'all_time',
      desc: '',
      args: [],
    );
  }

  /// `This Month`
  String get this_month {
    return Intl.message(
      'This Month',
      name: 'this_month',
      desc: '',
      args: [],
    );
  }

  /// `Coin Management`
  String get coin_management {
    return Intl.message(
      'Coin Management',
      name: 'coin_management',
      desc: '',
      args: [],
    );
  }

  /// `Add Coin`
  String get add_coin {
    return Intl.message(
      'Add Coin',
      name: 'add_coin',
      desc: '',
      args: [],
    );
  }

  /// `Redeem`
  String get redeem {
    return Intl.message(
      'Redeem',
      name: 'redeem',
      desc: '',
      args: [],
    );
  }

  /// `Coins`
  String get coins {
    return Intl.message(
      'Coins',
      name: 'coins',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get change_language {
    return Intl.message(
      'Change Language',
      name: 'change_language',
      desc: '',
      args: [],
    );
  }

  /// `Skip Login`
  String get skip_login {
    return Intl.message(
      'Skip Login',
      name: 'skip_login',
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
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'id'),
      Locale.fromSubtags(languageCode: 'it'),
      Locale.fromSubtags(languageCode: 'pt'),
      Locale.fromSubtags(languageCode: 'sw'),
      Locale.fromSubtags(languageCode: 'tr'),
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
