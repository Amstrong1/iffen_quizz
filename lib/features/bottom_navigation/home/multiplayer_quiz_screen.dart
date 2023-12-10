import 'package:flutter/material.dart';
import 'package:iffen_quizz/app_config/style.dart';
import 'package:iffen_quizz/components/3d_button.dart';
import 'package:iffen_quizz/components/back_button.dart';
import 'package:iffen_quizz/features/bottom_navigation/home/solo_quiz_screen.dart';
import 'package:iffen_quizz/generated/l10n.dart';
import 'package:iffen_quizz/models/quiz_type.dart';
import 'package:iffen_quizz/routes/routes.dart';

class MultiplayerQuizScreen extends StatelessWidget {
  MultiplayerQuizScreen({Key? key}) : super(key: key);

  final List<Quiz> quizList = [
    Quiz('20', '05', '10', '75%'),
    Quiz('40', '10', '08', '65%'),
    Quiz('60', '20', '08', '60%'),
    Quiz('120', '50', '07', '50%'),
    Quiz('150', '70', '10', '50%'),
    Quiz('20', '05', '10', '75%'),
    Quiz('40', '10', '08', '65%'),
  ];

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          s.multiplayer_quiz,
          style: TextStyle(color: Theme.of(context).scaffoldBackgroundColor),
        ),
        leading: const AppBarBackButton(),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(end: 18.0),
              child: Button3D(
                height: 34,
                width: 75,
                style: const StyleOf3dButton(
                  topColor: Color(0xfffff0b7),
                  backColor: Color(0xffd8cda1),
                  z: 6,
                ),
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/coin.png',
                      height: 13,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      '0',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 14,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 16.0,
        ),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              PageRoutes.quizStartScreen,
              arguments: QuizType.multiplayer,
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 18,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset('assets/coin.png'),
                    const SizedBox(
                      width: 14,
                    ),
                    Text(
                      quizList[index].reward,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      s.reward,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const Spacer(),
                    Text(
                      s.entry,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Button3D(
                      height: 31,
                      width: 60,
                      style: StyleOf3dButton(
                        topColor: AppTheme.greenButtonTopColor,
                        backColor: const Color(0xff6ab56c),
                        z: 6,
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/coin.png',
                            height: 13,
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            quizList[index].entry,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  fontSize: 14,
                                ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const Divider(
                  height: 1,
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(18),
                    ),
                    color: Color(0xffeff7fb),
                  ),
                  padding: const EdgeInsetsDirectional.only(
                    start: 20,
                    end: 16,
                    top: 15,
                    bottom: 15,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: AppTheme.greenButtonTopColor,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          s.highest_correct,
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                      Icon(
                        Icons.group,
                        color: AppTheme.greenButtonTopColor,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '05',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      Icon(
                        Icons.emoji_events,
                        color: AppTheme.greenButtonTopColor,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        quizList[index].percentage,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
        itemCount: quizList.length,
      ),
    );
  }
}
