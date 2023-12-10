import 'package:flutter/material.dart';
import 'package:iffen_quizz/app_config/style.dart';
import 'package:iffen_quizz/components/3d_button.dart';
import 'package:iffen_quizz/components/back_button.dart';
import 'package:iffen_quizz/components/custom_button.dart';
import 'package:iffen_quizz/generated/l10n.dart';
import 'package:iffen_quizz/routes/routes.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  String correctAnswer1 = 'Norway';
  String selectedAnswer1 = '';
  String correctAnswer2 = 'Franz Beckenbauer';
  String selectedAnswer2 = '';

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
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
          Column(
            children: [
              AppBar(
                centerTitle: true,
                backgroundColor: Theme.of(context).primaryColorDark,
                leading: const AppBarBackButton(),
                title: Text(
                  '02 of 10',
                  style: TextStyle(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    fontSize: 16,
                  ),
                ),
                actions: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Theme.of(context).primaryColor,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 6,
                      ),
                      margin: const EdgeInsetsDirectional.only(end: 20.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/ic_timer.png',
                            height: 19,
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            '03:58',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: const LinearProgressIndicator(
                    minHeight: 10,
                    color: Color(0xff3cb67b),
                    backgroundColor: Color(0xff2a0f55),
                    value: 0.25,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 60),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Theme.of(context)
                            .scaffoldBackgroundColor
                            .withOpacity(0.2),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffc89afe),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.45,
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    margin:
                        const EdgeInsets.only(left: 30, right: 30, bottom: 40),
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            s.general_knowledge,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Roald Amundsen was the first man to reach the South Pole, but where was he from?',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          buildOption(context, s.france),
                          const SizedBox(
                            height: 15,
                          ),
                          buildOption(context, s.norway),
                          const SizedBox(
                            height: 15,
                          ),
                          buildOption(context, s.netherland),
                          const SizedBox(
                            height: 15,
                          ),
                          buildOption(context, s.italy),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              CustomButton(
                width: 170,
                title: s.next,
                onTap: () {
                  Navigator.pushNamed(context, PageRoutes.quizSummaryScreen);
                },
                styleOf3dButton: StyleOf3dButton(
                  backColor: const Color(0xff6ab56c),
                  topColor: AppTheme.greenButtonTopColor,
                ),
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedAnswer1 = title;
          selectedAnswer2 = title;
        });
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            color: AppTheme.greyTextColor,
          ),
          borderRadius: BorderRadius.circular(12),
          color: selectedAnswer1 == correctAnswer1 && title == selectedAnswer1
              ? const Color(0xffdbffdc)
              : selectedAnswer1 != correctAnswer1 && title == selectedAnswer1
                  ? const Color(0xffffdbdb)
                  : null,
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Text(
              title,
              style:
                  Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 14),
            ),
            const Spacer(),
            if (selectedAnswer1 == correctAnswer1 && title == selectedAnswer1)
              Image.asset(
                'assets/ic_correct.png',
                height: 18,
              )
            else if (selectedAnswer1 != correctAnswer1 &&
                title == selectedAnswer1)
              Image.asset(
                'assets/ic_wrong.png',
                height: 18,
              )
          ],
        ),
      ),
    );
  }
}
