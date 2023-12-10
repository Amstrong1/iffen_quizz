import 'package:flutter/material.dart';
import 'package:iffen_quizz/app_config/style.dart';
import 'package:iffen_quizz/components/category_item.dart';
import 'package:iffen_quizz/generated/l10n.dart';
import 'package:iffen_quizz/models/quiz_type.dart';
import 'package:iffen_quizz/routes/routes.dart';

import 'home_screen.dart';

class SelectCategoryScreen extends StatefulWidget {
  const SelectCategoryScreen({Key? key}) : super(key: key);

  @override
  State<SelectCategoryScreen> createState() => _SelectCategoryScreenState();
}

class _SelectCategoryScreenState extends State<SelectCategoryScreen> {
  final List<Category> categoryList = [];

  @override
  void didChangeDependencies() {
    final s = S.of(context);
    categoryList.addAll([
      Category(
        s.space,
        'assets/categories/catg_spce.png',
        const Color(0xffffce85),
      ),
      Category(
        s.sports,
        'assets/categories/catg_sports.png',
        AppTheme.greenButtonTopColor,
      ),
      Category(
        s.history,
        'assets/categories/catg_history.png',
        const Color(0xffaae5ff),
      ),
      Category(
        s.maths,
        'assets/categories/catg_maths.png',
        const Color(0xfffeb3f2),
      ),
      Category(
        s.space,
        'assets/categories/catg_spce.png',
        const Color(0xffffce85),
      ),
      Category(
        s.sports,
        'assets/categories/catg_sports.png',
        AppTheme.greenButtonTopColor,
      ),
    ]);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final QuizType quizType =
        ModalRoute.of(context)?.settings.arguments as QuizType;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          s.select_category,
          style: TextStyle(color: Theme.of(context).scaffoldBackgroundColor),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
            ),
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(
              vertical: 9.0,
              horizontal: 10.0,
            ),
            child: Icon(
              Icons.arrow_back,
              size: 18,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
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
              Icons.search,
              size: 18,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(18),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            GridView.builder(
              padding: const EdgeInsets.only(top: 30.0, bottom: 7.0),
              itemCount: categoryList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 14,
                crossAxisSpacing: 14,
              ),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  if (quizType == QuizType.solo) {
                    Navigator.pushNamed(context, PageRoutes.soloQuizScreen);
                  } else if (quizType == QuizType.multiplayer) {
                    Navigator.pushNamed(
                        context, PageRoutes.multiplayerQuizScreen);
                  } else {
                    Navigator.pushNamed(context, PageRoutes.oneVsOneQuizScreen);
                  }
                },
                child: CategoryItem(
                  color: categoryList[index].color,
                  title: categoryList[index].title,
                  image: categoryList[index].image,
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      CategoryItem(
                        height: 110,
                        // width: 90,
                        color: categoryList[2].color,
                        title: categoryList[2].title,
                        image: categoryList[2].image,
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      CategoryItem(
                        height: 110,
                        // width: 90,
                        color: categoryList[5].color,
                        title: categoryList[5].title,
                        image: categoryList[5].image,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 14,
                ),
                Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () {
                      if (quizType == QuizType.solo) {
                        Navigator.pushNamed(context, PageRoutes.soloQuizScreen);
                      } else if (quizType == QuizType.multiplayer) {
                        Navigator.pushNamed(
                            context, PageRoutes.multiplayerQuizScreen);
                      } else {
                        Navigator.pushNamed(
                            context, PageRoutes.oneVsOneQuizScreen);
                      }
                    },
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          height: 234,
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 14,
                            top: 12,
                          ),
                          margin: const EdgeInsets.only(bottom: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: const Color(0xffc2b7ff),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xffc2b7ff),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      s.start_random_quiz.toUpperCase(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                            fontSize: 10,
                                            height: 1.4,
                                            letterSpacing: 1,
                                          ),
                                      overflow: TextOverflow.fade,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 28,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor
                                          .withOpacity(0.1),
                                    ),
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 18,
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/categories/catg_random.png',
                          // height: 45,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            GridView.builder(
              padding: const EdgeInsets.only(top: 0.0, bottom: 100.0),
              itemCount: categoryList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 14,
                crossAxisSpacing: 14,
              ),
              itemBuilder: (context, index) => CategoryItem(
                color: categoryList[index].color,
                title: categoryList[index].title,
                image: categoryList[index].image,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
