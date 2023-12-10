import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iffen_quizz/app_config/style.dart';
import 'package:iffen_quizz/components/3d_button.dart';
import 'package:iffen_quizz/features/bottom_navigation/home/solo_quiz_screen.dart';
import 'package:iffen_quizz/generated/l10n.dart';
import 'package:iffen_quizz/models/quiz_type.dart';
import 'package:iffen_quizz/models/standings_item.dart';
import 'package:iffen_quizz/routes/routes.dart';

class QuizSummaryScreen extends StatelessWidget {
  const QuizSummaryScreen({Key? key}) : super(key: key);

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
                automaticallyImplyLeading: false,
                centerTitle: true,
                backgroundColor: Theme.of(context).primaryColorDark,
                title: Text(
                  s.quiz_summary,
                  style: TextStyle(
                      color: Theme.of(context).scaffoldBackgroundColor),
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).popUntil(
                        ModalRoute.withName(PageRoutes.bottomNavigation),
                      );
                    },
                    icon: Icon(
                      Icons.home_filled,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 30, right: 30, top: 56),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 80,
                        ),
                        Text(
                          s.congratulations,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(fontSize: 20),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: AppTheme.greyTextColor),
                            children: [
                              TextSpan(text: s.you_scored),
                              TextSpan(
                                text: " +80 ",
                                style: TextStyle(
                                  color: AppTheme.greenButtonTopColor,
                                ),
                              ),
                              TextSpan(text: s.points),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(
                          height: 1,
                        ),
                        IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/quicktime.png',
                                          height: 16,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          '10',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge
                                              ?.copyWith(
                                                fontSize: 14,
                                              ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      s.total_que,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                              color: AppTheme.greyTextColor),
                                    ),
                                  ],
                                ),
                              ),
                              const VerticalDivider(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/ic_correct.png',
                                          height: 16,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          '08',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge
                                              ?.copyWith(
                                                fontSize: 14,
                                              ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      s.correct,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                              color: AppTheme.greyTextColor),
                                    ),
                                  ],
                                ),
                              ),
                              const VerticalDivider(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/ic_wrong.png',
                                          height: 16,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          '02',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge
                                              ?.copyWith(
                                                fontSize: 14,
                                              ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      s.wrong,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                              color: AppTheme.greyTextColor),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset('assets/result_won.png'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: DefaultTabController(
                  length: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    child: Column(
                      children: [
                        TabBar(
                          labelStyle: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(fontSize: 14),
                          labelColor: AppTheme.blackColor,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorWeight: 4,
                          indicatorColor: Theme.of(context)
                              .primaryColorDark
                              .withOpacity(0.7),
                          tabs: [
                            Tab(
                              text: s.standings,
                            ),
                            Tab(
                              text: s.summary,
                            ),
                            Tab(
                              text: s.play_again,
                            ),
                          ],
                        ),
                        const Divider(
                          height: 1,
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              StandingsTab(),
                              const SummaryTab(),
                              PlayAgainTab(),
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
        ],
      ),
    );
  }
}

class StandingsTab extends StatelessWidget {
  StandingsTab({Key? key}) : super(key: key);

  final List<StandingsItem> standings = [
    StandingsItem('st', 'assets/avatars/1.jpg', 'Emili Williamson', '80'),
    StandingsItem('nd', 'assets/avatars/2.jpg', 'Kelin Harward', '70'),
    StandingsItem('rd', 'assets/avatars/3.jpg', 'James Haydon', '70'),
    StandingsItem('th', 'assets/avatars/4.jpg', 'Jessica Taylor', '60'),
  ];

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(
              start: 15.0, end: 30.0, top: 10.0, bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                s.rank,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 12,
                    ),
              ),
              Text(
                '10 ${s.players}',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 12,
                    ),
              ),
              Text(
                '${s.correct}(%)',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 12,
                    ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () =>
                  Navigator.pushNamed(context, PageRoutes.otherProfileScreen),
              child: Container(
                color: index == 0
                    ? const Color(0xffe9ffea).withOpacity(0.6)
                    : null,
                padding: const EdgeInsetsDirectional.only(
                  start: 25.0,
                  end: 35.0,
                  // top: 20,
                  bottom: 15,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: Text(
                        (index + 1).toString(),
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Text(
                          standings[index].rankSuperScript,
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 10,
                            fontFeatures: [
                              const FontFeature.superscripts(),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0, top: 26.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              standings[index].image,
                              height: 55,
                            ),
                          ),
                        ),
                        Visibility(
                          visible: index == 0,
                          child: Positioned(
                            left: 0,
                            top: 0,
                            child: Image.asset(
                              'assets/ic_crown.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 28,
                        ),
                        Text(
                          standings[index].name,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        if (index == 0)
                          Row(
                            children: [
                              Text(
                                s.won,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      color: AppTheme.greenButtonTopColor,
                                      fontSize: 12,
                                    ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Image.asset(
                                'assets/coin.png',
                                height: 16,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                '50',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      color: AppTheme.greenButtonTopColor,
                                      fontSize: 12,
                                    ),
                              ),
                            ],
                          ),
                      ],
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: Text(
                        '${standings[index].percentage}%',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            separatorBuilder: (context, index) => const Divider(
              height: 1,
            ),
            itemCount: standings.length,
          ),
        ),
      ],
    );
  }
}

class SummaryTab extends StatelessWidget {
  const SummaryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  '${s.question} ${index + 1}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const Spacer(),
                Icon(
                  Icons.more_horiz,
                  color: Theme.of(context).hintColor.withOpacity(0.5),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              index == 0
                  ? 'Roald Amundsen was the first man to reach the South Pole, but where was he from?'
                  : "Who among the following does'nt have the record of playing the most World Cup?",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: 16,
                    height: 1.8,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset('assets/ic_wrong.png'),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  'Antonio Carbajal',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: const Color(0xffe42929),
                      ),
                ),
                const Spacer(),
                Text(
                  '-05 ${s.points}',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: const Color(0xffe62e2e),
                      ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset('assets/ic_correct.png'),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  'Franz Beckenbauer',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ],
        ),
      ),
      separatorBuilder: (context, index) => const Divider(
        height: 1,
      ),
      itemCount: 4,
    );
  }
}

class PlayAgainTab extends StatelessWidget {
  PlayAgainTab({Key? key}) : super(key: key);

  final List<Quiz> playAgainList = [
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
    return ListView.separated(
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => Navigator.pushNamed(
          context,
          PageRoutes.quizStartScreen,
          arguments: QuizType.oneVOne,
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30.0),
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
                    playAgainList[index].reward,
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
                          playAgainList[index].entry,
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
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
                        playAgainList[index].percentage,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
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
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: playAgainList.length,
    );
  }
}
