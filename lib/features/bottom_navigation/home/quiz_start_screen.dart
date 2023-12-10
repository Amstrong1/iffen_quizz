import 'package:flutter/material.dart';
import 'package:iffen_quizz/app_config/style.dart';
import 'package:iffen_quizz/components/3d_button.dart';
import 'package:iffen_quizz/components/back_button.dart';
import 'package:iffen_quizz/components/custom_button.dart';
import 'package:iffen_quizz/generated/l10n.dart';
import 'package:iffen_quizz/models/quiz_type.dart';
import 'package:iffen_quizz/routes/routes.dart';

class QuizStartScreen extends StatelessWidget {
  const QuizStartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final QuizType quizType =
        ModalRoute.of(context)?.settings.arguments as QuizType;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorDark,
        leading: const AppBarBackButton(),
        centerTitle: true,
        title: Text(
          quizType == QuizType.multiplayer
              ? s.multiplayer_quiz
              : quizType == QuizType.solo
                  ? s.solo_quiz
                  : s.oneVOneQuiz,
          style: TextStyle(color: Theme.of(context).scaffoldBackgroundColor),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: -650,
            left: -200,
            right: -200,
            child: CircleAvatar(
              radius: 500,
              backgroundColor: Theme.of(context).primaryColorDark,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 36.0),
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    quizType == QuizType.multiplayer
                        ? 'assets/hero_multiplayer.png'
                        : 'assets/hero_1vs1.png',
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                SizedBox(
                  width: 200,
                  child: Text(
                    s.play_quiz_competition,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  s.lets_have_a_knowledge_battle,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  s.play_quiz_with,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 20,
                      ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  title: s.friends,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      PageRoutes.inviteFriendsScreen,
                      arguments: quizType,
                    );
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomButton(
                  title: s.random_user,
                  onTap: () {},
                  styleOf3dButton: StyleOf3dButton(
                    topColor: AppTheme.greenButtonTopColor,
                    backColor: const Color(0xff6ab56c),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
