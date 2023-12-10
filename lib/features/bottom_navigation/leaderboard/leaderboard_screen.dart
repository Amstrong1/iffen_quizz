import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iffen_quizz/app_config/style.dart';
import 'package:iffen_quizz/generated/l10n.dart';
import 'package:iffen_quizz/models/standings_item.dart';
import 'package:iffen_quizz/routes/routes.dart';

class LeaderboardScreen extends StatelessWidget {
  LeaderboardScreen({Key? key}) : super(key: key);

  final List<StandingsItem> standings = [
    StandingsItem('st', 'assets/avatars/1.jpg', 'Emili Williamson', '0'),
    StandingsItem('nd', 'assets/avatars/2.jpg', 'Kelin Harward', '2166'),
    StandingsItem('rd', 'assets/avatars/3.jpg', 'James Haydon', '2086'),
  ];

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/avatars/me.jpg',
                height: 40,
                width: 40,
              ),
            ),
          ),
          centerTitle: true,
          title: Text(
            s.leaderboard,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Stack(
                children: [
                  Icon(
                    Icons.notifications,
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  const Positioned(
                    right: 2,
                    top: 2,
                    child: CircleAvatar(
                      radius: 2.5,
                      backgroundColor: Color(0xffe90c0c),
                    ),
                  ),
                ],
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorDark,
                borderRadius: BorderRadius.circular(40),
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Theme.of(context).primaryColor,
                ),
                tabs: [
                  Tab(text: s.all_time),
                  Tab(text: s.this_month),
                  Tab(text: s.this_week),
                ],
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TabBarView(
                children: [
                  buildTab(context),
                  buildTab(context),
                  buildTab(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column buildTab(BuildContext context) {
    final s = S.of(context);
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Image.asset(
                'assets/leaderboard.png',
              ),
            ),
            Positioned(
              left: 24,
              top: 30,
              child: buildLeader(
                context,
                'assets/avatars/1.jpg',
                'Gloria\nBlaxter',
                '2',
              ),
            ),
            buildLeader(
              context,
              'assets/avatars/me.jpg',
              'Jackson\nKim',
              '1',
            ),
            Positioned(
              right: 24,
              top: 30,
              child: buildLeader(
                context,
                'assets/avatars/4.jpg',
                'Kendal\nColeman',
                '3',
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
            ),
            child: ListView.separated(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  color: index == 0
                      ? const Color(0xffe9ffea).withOpacity(0.6)
                      : null,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                ),
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
                        '${standings[index].percentage} pt',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
              separatorBuilder: (context, index) => const Divider(
                height: 1,
              ),
              itemCount: standings.length,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildLeader(
    BuildContext context,
    String image,
    String title,
    String position,
  ) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, PageRoutes.otherProfileScreen),
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
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).primaryColor.withOpacity(0.5),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            child: const Text('2738 pt'),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            position,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ],
      ),
    );
  }
}
