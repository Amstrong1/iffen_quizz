import 'package:flutter/material.dart';
import 'package:iffen_quizz/app_config/style.dart';
import 'package:iffen_quizz/components/category_item.dart';
import 'package:iffen_quizz/features/bottom_navigation/home/home_screen.dart';
import 'package:iffen_quizz/generated/l10n.dart';
import 'package:iffen_quizz/models/quiz_type.dart';
import 'package:iffen_quizz/routes/routes.dart';

class ExploreCategoryScreen extends StatefulWidget {
  const ExploreCategoryScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ExploreCategoryScreen> createState() => _ExploreCategoryScreenState();
}

class _ExploreCategoryScreenState extends State<ExploreCategoryScreen> {
  final List<Category> categoryList = [];

  final List<Category> quizList = [];

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
    quizList.addAll([
      Category(
        s.solo_made,
        'assets/quiz_type/quiz_solo.png',
        const Color(0xffffb7b7),
        onTap: () => Navigator.pushNamed(context, PageRoutes.soloQuizScreen,
            arguments: QuizType.solo),
      ),
      Category(
        s.multiplayer_mode,
        'assets/quiz_type/quiz_multi.png',
        const Color(0xff96defe),
        onTap: () => Navigator.pushNamed(
          context,
          PageRoutes.multiplayerQuizScreen,
          arguments: QuizType.multiplayer,
        ),
      ),
      Category(
        s.oneVOne,
        'assets/quiz_type/quiz_1v1.png',
        AppTheme.greenButtonTopColor,
        onTap: () => Navigator.pushNamed(
          context,
          PageRoutes.oneVsOneQuizScreen,
          arguments: QuizType.oneVOne,
        ),
      ),
    ]);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          s.explore_categories,
          style: TextStyle(color: Theme.of(context).scaffoldBackgroundColor),
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
                  // Navigator.pushNamed(context, PageRoutes.soloQuizScreen);
                  buildShowModalBottomSheet(context);
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
                      buildShowModalBottomSheet(context);
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
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  buildShowModalBottomSheet(context);
                },
                child: CategoryItem(
                  color: categoryList[index].color,
                  title: categoryList[index].title,
                  image: categoryList[index].image,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    final s = S.of(context);
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsetsDirectional.only(
                  start: 33,
                  top: 35,
                  bottom: 35,
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                  color: Color(0xff88e68b),
                ),
                child: Text(
                  s.sports,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(letterSpacing: 1.8),
                ),
              ),
              PositionedDirectional(
                end: 0,
                bottom: 0,
                child: Image.asset(
                  'assets/categories/catg_sports.png',
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 25.0,
            ),
            child: Text(
              s.select_quiz,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          SizedBox(
            height: 180,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                onTap: quizList[index].onTap,
                child: Container(
                  width: 124,
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 17,
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: quizList[index].color,
                    boxShadow: [
                      BoxShadow(
                        color: quizList[index].color,
                        blurRadius: 4,
                        // spreadRadius: 0.05,
                        offset: const Offset(0, 0.5),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        s.start,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(letterSpacing: 1),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Expanded(
                        child: Text(
                          quizList[index].title,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontSize: 14, height: 1.4),
                        ),
                      ),
                      Center(
                        child: Image.asset(quizList[index].image),
                      ),
                    ],
                  ),
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
              itemCount: quizList.length,
            ),
          ),
          const SizedBox(
            height: 48,
          ),
        ],
      ),
    );
  }
}
