import 'package:flutter/material.dart';
import 'package:iffen_quizz/app_config/style.dart';
import 'package:iffen_quizz/components/3d_button.dart';
import 'package:iffen_quizz/components/back_button.dart';
import 'package:iffen_quizz/components/custom_button.dart';
import 'package:iffen_quizz/components/ripples_animation.dart';
import 'package:iffen_quizz/generated/l10n.dart';
import 'package:iffen_quizz/models/quiz_type.dart';
import 'package:iffen_quizz/routes/routes.dart';

class QuizRoomScreen extends StatelessWidget {
  const QuizRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final QuizType quizType =
        ModalRoute.of(context)?.settings.arguments as QuizType;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        leading: const AppBarBackButton(),
        title: Text(
          s.quiz_room,
          style: TextStyle(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
            ),
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.symmetric(
              vertical: 9.0,
              horizontal: 10.0,
            ),
            child: Icon(
              Icons.add,
              size: 18,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: -100,
            right: -100,
            top: 0,
            bottom: 0,
            child: RipplesAnimation(
              color: Theme.of(context).scaffoldBackgroundColor,
              size: 200,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                child: Text(
                  'Vs.',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).primaryColor,
                      ),
                ),
              ),
            ),
          ),
          Positioned(
            left: quizType == QuizType.multiplayer ? 50 : null,
            top: 150,
            child: buildRoomItem(context, 'assets/avatars/1.jpg', 'You'),
          ),
          if (quizType == QuizType.multiplayer)
            Positioned(
              right: 50,
              top: 170,
              child: buildRoomItem(context, 'assets/avatars/2.jpg', 'Adams'),
            ),
          Positioned(
            left: quizType == QuizType.multiplayer
                ? MediaQuery.of(context).size.width / 3
                : null,
            bottom: 130,
            child: buildRoomItem(context, 'assets/avatars/3.jpg', 'James'),
          ),
          if (quizType == QuizType.multiplayer)
            Positioned(
              right: 30,
              bottom: 170,
              child: buildRoomItem(context, 'assets/avatars/4.jpg', 'Kelin'),
            ),
          Positioned(
            bottom: 20,
            left: 30,
            right: 30,
            child: CustomButton(
              title: s.start_quiz,
              leadingIcon: Icon(
                Icons.play_arrow_rounded,
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              styleOf3dButton: StyleOf3dButton(
                topColor: AppTheme.greenButtonTopColor,
                backColor: const Color(0xff6ab56c),
              ),
              onTap: () {
                Navigator.pushNamed(context, PageRoutes.questionsScreen);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRoomItem(BuildContext context, String image, String title) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, PageRoutes.otherProfileScreen);
      },
      child: Column(
        children: [
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                width: 3,
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ],
      ),
    );
  }
}
