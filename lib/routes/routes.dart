import 'package:flutter/material.dart';
import 'package:iffen_quizz/features/bottom_navigation/account/followers_screen.dart';
import 'package:iffen_quizz/features/bottom_navigation/account/my_profile_screen.dart';
import 'package:iffen_quizz/features/bottom_navigation/account/other_profile_screen.dart';
import 'package:iffen_quizz/features/bottom_navigation/account/privacy_policies_screen.dart';
import 'package:iffen_quizz/features/bottom_navigation/account/settings_screen.dart';
import 'package:iffen_quizz/features/bottom_navigation/bottom_navigation.dart';
import 'package:iffen_quizz/features/bottom_navigation/home/1v1_quiz_screen.dart';
import 'package:iffen_quizz/features/bottom_navigation/home/invite_friends_screen.dart';
import 'package:iffen_quizz/features/bottom_navigation/home/multiplayer_quiz_screen.dart';
import 'package:iffen_quizz/features/bottom_navigation/home/questions_screen.dart';
import 'package:iffen_quizz/features/bottom_navigation/home/quiz_room_screen.dart';
import 'package:iffen_quizz/features/bottom_navigation/home/quiz_start_screen.dart';
import 'package:iffen_quizz/features/bottom_navigation/home/quiz_summary.dart';
import 'package:iffen_quizz/features/bottom_navigation/home/select_category_screen.dart';
import 'package:iffen_quizz/features/bottom_navigation/home/solo_quiz_screen.dart';
import 'package:iffen_quizz/features/coin_management/coin_management_screen.dart';
import 'package:iffen_quizz/features/language/ui/language_sheet.dart';

class PageRoutes {
  static const String bottomNavigation = 'bottom_navigation';
  static const String soloQuizScreen = 'solo_quiz_screen';
  static const String multiplayerQuizScreen = 'multiplayer_quiz';
  static const String oneVsOneQuizScreen = 'one_vs_one';
  static const String quizStartScreen = 'multiplayer_quiz_start';
  static const String inviteFriendsScreen = 'invite_friends';
  static const String quizRoomScreen = 'quiz_room';
  static const String questionsScreen = 'questions_screen';
  static const String quizSummaryScreen = 'quiz_summary';
  static const String selectCategoryScreen = 'select_category';
  static const String otherProfileScreen = 'other_profile';
  static const String coinManagementScreen = 'coin_management_screen';
  static const String followersScreen = 'followers_screen';
  static const String myProfileScreen = 'my_profile';
  static const String settingsScreen = 'settings_screen';
  static const String languageScreen = 'language_screen';
  static const String privacyPoliciesScreen = 'privacy_policy';

  Map<String, WidgetBuilder> routes() {
    return {
      bottomNavigation: (context) => const AppNavigation(),
      soloQuizScreen: (context) => SoloQuizScreen(),
      multiplayerQuizScreen: (context) => MultiplayerQuizScreen(),
      oneVsOneQuizScreen: (context) => OneVsOneQuizScreen(),
      quizStartScreen: (context) => const QuizStartScreen(),
      inviteFriendsScreen: (context) => InviteFriendsScreen(),
      quizRoomScreen: (context) => const QuizRoomScreen(),
      questionsScreen: (context) => const QuestionsScreen(),
      quizSummaryScreen: (context) => const QuizSummaryScreen(),
      selectCategoryScreen: (context) => const SelectCategoryScreen(),
      otherProfileScreen: (context) => OtherProfileScreen(),
      coinManagementScreen: (context) => const CoinManagementScreen(),
      followersScreen: (context) => FollowersScreen(),
      myProfileScreen: (context) => const MyProfileScreen(),
      settingsScreen: (context) => const SettingsScreen(),
      languageScreen: (context) => const LanguageSheet(
            fromRoot: false,
          ),
      privacyPoliciesScreen: (context) => const PrivacyPoliciesScreen(),
    };
  }
}
