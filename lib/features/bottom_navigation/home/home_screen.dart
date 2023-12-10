import 'package:flutter/material.dart';
import 'package:iffen_quizz/app_config/style.dart';
import 'package:iffen_quizz/components/3d_button.dart';
import 'package:iffen_quizz/components/custom_button.dart';
import 'package:iffen_quizz/components/entry_field.dart';
import 'package:iffen_quizz/generated/l10n.dart';
import 'package:iffen_quizz/models/quiz_type.dart';
import 'package:iffen_quizz/routes/routes.dart';

class Category {
  String title;
  String image;
  Color color;
  Function()? onTap;

  Category(this.title, this.image, this.color, {this.onTap});
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Category> quizList = [];

  @override
  void initState() {
    // Future.delayed(
    //   const Duration(seconds: 3),
    //   () => openDialog(),
    // );
    super.initState();
  }

  Future<dynamic> openDialog() {
    return showDialog(
      context: context,
      builder: (context) {
        final s = S.of(context);
        return Dialog(
          alignment: Alignment.center,
          insetPadding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 100.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          backgroundColor: Colors.transparent,
          child: SingleChildScrollView(
            child: Container(
              height: 536,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        width: 2,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                      image: const DecorationImage(
                        image: AssetImage('assets/avatars/me.jpg'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 42,
                  ),
                  Text(
                    'Kelin Harward',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    s.invite_you_to_play,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    s.multiplayer_quiz,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    // onTap: () => Navigator.pushNamed(
                    //   context,
                    //   PageRoutes.quizStartScreen,
                    //   arguments: QuizType.oneVOne,
                    // ),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade200),
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
                                '20',
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
                                      '05',
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
                            child: Button3D(
                              width: double.infinity,
                              onPressed: () {},
                              style: const StyleOf3dButton(
                                topColor: Color(0xffeff7fb),
                                backColor: Color(0xffbdc8cc),
                                z: 8,
                                tapped: 5,
                                borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(20),
                                ),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
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
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
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
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
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
                                    '33',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    title: s.join_quiz,
                    onTap: () => Navigator.pushNamed(
                      context,
                      PageRoutes.quizRoomScreen,
                      arguments: QuizType.oneVOne,
                    ),
                    styleOf3dButton: StyleOf3dButton(
                        topColor: AppTheme.greenButtonTopColor,
                        backColor: const Color(0xff6ab56c)),
                    leadingIcon: Icon(
                      Icons.play_arrow_rounded,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.cancel,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        s.decline,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const Spacer(),
                      Text(
                        '00:10s',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void didChangeDependencies() {
    final s = S.of(context);
    quizList.addAll([
      Category(
        s.solo_made,
        'assets/quiz_type/quiz_solo.png',
        const Color(0xffffb7b7),
        onTap: () => Navigator.pushNamed(
            context, PageRoutes.selectCategoryScreen,
            arguments: QuizType.solo),
      ),
      Category(
        s.multiplayer_mode,
        'assets/quiz_type/quiz_multi.png',
        const Color(0xff96defe),
        onTap: () => Navigator.pushNamed(
          context,
          PageRoutes.selectCategoryScreen,
          arguments: QuizType.multiplayer,
        ),
      ),
      Category(
        s.oneVOne,
        'assets/quiz_type/quiz_1v1.png',
        AppTheme.greenButtonTopColor,
        onTap: () => Navigator.pushNamed(
          context,
          PageRoutes.selectCategoryScreen,
          arguments: QuizType.oneVOne,
        ),
      ),
    ]);
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
    ]);
    super.didChangeDependencies();
  }

  final List<Category> categoryList = [];

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Theme.of(context).primaryColor,
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 20.0,
                  end: 8.0,
                  top: 8.0,
                ),
                child: AppBar(
                  centerTitle: true,
                  backgroundColor: Colors.transparent,
                  leading: GestureDetector(
                    onTap: () => openDialog(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/avatars/me.jpg',
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ),
                  title: Text(
                    'Iffen Quizz',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontSize: 22),
                  ),
                  actions: [
                    Stack(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ),
                        const Positioned(
                          right: 15,
                          top: 15,
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 3,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(
                        context,
                        PageRoutes.coinManagementScreen,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 20,
                        ),
                        margin: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: IntrinsicHeight(
                          child: Row(
                            children: [
                              Expanded(
                                child: buildRow(
                                  context,
                                  'assets/ic_rank.png',
                                  '0th Rank',
                                  '0 pt',
                                ),
                              ),
                              const VerticalDivider(),
                              Expanded(
                                child: buildRow(
                                  context,
                                  'assets/ic_reward.png',
                                  'Reward Point',
                                  '0',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 180,
                      child: ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
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
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 8,
                            offset: const Offset(0, 0.5),
                          ),
                        ],
                      ),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: EntryField(
                        hintText: s.search_quiz_categories,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Theme.of(context).hintColor,
                        ),
                        fillColor: Theme.of(context).scaffoldBackgroundColor,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        s.explore_categories,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: GestureDetector(
                        onTap: () => Navigator.pushNamed(
                            context, PageRoutes.soloQuizScreen),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.width * 0.41,
                                  width:
                                      MediaQuery.of(context).size.width * 0.41,
                                  padding: const EdgeInsets.only(
                                    left: 14,
                                    right: 14,
                                    top: 10,
                                  ),
                                  margin: const EdgeInsets.only(bottom: 12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    color: const Color(0xffc2b7ff),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0xffc2b7ff),
                                        blurRadius: 4,
                                        offset: Offset(0, 0.5),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          s.start_random_quiz.toUpperCase(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge
                                              ?.copyWith(
                                                fontSize: 14,
                                                height: 1.4,
                                                letterSpacing: 1,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 55,
                                  bottom: 0,
                                  child: Image.asset(
                                    'assets/categories/catg_random.png',
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: GridView.builder(
                                padding: EdgeInsets.zero,
                                itemCount: categoryList.length,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10,
                                ),
                                itemBuilder: (context, index) => Container(
                                  padding: const EdgeInsets.only(
                                    left: 14,
                                    right: 14,
                                    top: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    color: categoryList[index].color,
                                    boxShadow: [
                                      BoxShadow(
                                        color: categoryList[index].color,
                                        blurRadius: 2,
                                        offset: const Offset(0, 0),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        categoryList[index].title.toUpperCase(),
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
                                      Expanded(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Expanded(
                                              child: Image.asset(
                                                categoryList[index].image,
                                                // height: 45,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 150,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row buildRow(
      BuildContext context, String image, String title, String subtitle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          height: 40,
          width: 40,
        ),
        const SizedBox(
          width: 15,
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(fontSize: 12),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                subtitle,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontSize: 16),
              )
            ],
          ),
        ),
      ],
    );
  }
}
