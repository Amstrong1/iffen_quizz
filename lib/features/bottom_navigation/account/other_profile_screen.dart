import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:iffen_quizz/app_config/style.dart';
import 'package:iffen_quizz/components/3d_button.dart';
import 'package:iffen_quizz/components/custom_button.dart';
import 'package:iffen_quizz/features/bottom_navigation/account/account_screen.dart';
import 'package:iffen_quizz/generated/l10n.dart';

class OtherProfileScreen extends StatelessWidget {
  OtherProfileScreen({Key? key}) : super(key: key);

  final List<Coordinate> graphValues = [
    Coordinate(0, 0),
    Coordinate(1, 1),
    Coordinate(2, 1),
    Coordinate(3, 2),
    Coordinate(4, 1.5),
    Coordinate(5, 2),
    Coordinate(6, 3),
  ];

  final List<String> days = [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
    'Sun',
  ];

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
            ),
            margin: const EdgeInsets.all(8),
            child: Icon(
              Icons.arrow_back,
              size: 28,
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
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            margin: const EdgeInsets.symmetric(
              vertical: 9.0,
              horizontal: 10.0,
            ),
            child: Icon(
              Icons.more_horiz,
              size: 28,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            width: 2,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/avatars/1.jpg',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            'Emili Williamson',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontSize: 22),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            'QRZ22541',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: Row(
                    children: [
                      buildColumn(context, '0', s.followers),
                      const SizedBox(
                        width: 30,
                      ),
                      buildColumn(context, '0', s.following),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: CustomButton(
                          title: s.follow,
                          styleOf3dButton: StyleOf3dButton(
                            topColor: AppTheme.greenButtonTopColor,
                            backColor: const Color(0xff6ab56c),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 150,
                ),
                Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  height: 500,
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 150,
              child: Column(
                children: [
                  const SizedBox(
                    height: 66.0,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: Theme.of(context).hintColor.withOpacity(0.3),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                            start: 30.0,
                            end: 30.0,
                            top: 20.0,
                          ),
                          child: Row(
                            children: [
                              Text(
                                '0',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              Text(
                                'th',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                  fontSize: 12,
                                  fontFeatures: [
                                    const FontFeature.superscripts(),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_upward_sharp,
                                color: AppTheme.greenButtonTopColor,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                '27',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      color: AppTheme.greenButtonTopColor,
                                      fontSize: 14,
                                    ),
                              ),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsetsDirectional.only(
                                  start: 12.0,
                                  end: 6.0,
                                  top: 4.0,
                                  bottom: 4.0,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: Theme.of(context)
                                        .hintColor
                                        .withOpacity(0.3),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      s.this_week,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: Theme.of(context).hintColor,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        AspectRatio(
                          aspectRatio: 2,
                          child: LineChart(
                            LineChartData(
                              lineBarsData: [
                                LineChartBarData(
                                  dotData: FlDotData(
                                    show: true,
                                    getDotPainter: (a, b, c, d) =>
                                        FlDotCirclePainter(
                                      strokeWidth: 1,
                                      strokeColor: AppTheme.greenButtonTopColor,
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                    ),
                                  ),
                                  spots: graphValues
                                      .map(
                                        (e) => FlSpot(e.x, e.y),
                                      )
                                      .toList(),
                                  isCurved: true,
                                  color: AppTheme.greenButtonTopColor,
                                  belowBarData: BarAreaData(
                                    spotsLine: BarAreaSpotsLine(
                                      show: true,
                                      flLineStyle: FlLine(
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor,
                                      ),
                                    ),
                                    show: true,
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        AppTheme.greenButtonTopColor
                                            .withOpacity(0.7),
                                        Theme.of(context)
                                            .scaffoldBackgroundColor,
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                              gridData: const FlGridData(show: false),
                              titlesData: FlTitlesData(
                                bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    interval: 1,
                                    showTitles: true,
                                    getTitlesWidget: (value, titleData) => Text(
                                      days[value.toInt()].toString(),
                                      style:
                                          const TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              borderData: FlBorderData(
                                show: false,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                color: Theme.of(context)
                                    .hintColor
                                    .withOpacity(0.3),
                              ),
                            ),
                            padding: const EdgeInsetsDirectional.only(
                              start: 20.0,
                              end: 10.0,
                              top: 20.0,
                              bottom: 12.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '0%',
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                    const Spacer(),
                                    Container(
                                      padding: const EdgeInsetsDirectional.only(
                                        start: 12.0,
                                        end: 6.0,
                                        top: 4.0,
                                        bottom: 4.0,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color: Theme.of(context)
                                              .hintColor
                                              .withOpacity(0.3),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            s.all,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge
                                                ?.copyWith(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            Icons.arrow_drop_down,
                                            color: Theme.of(context).hintColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  s.correct_meter,
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Center(
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Image.asset(
                                        'assets/chart 2.png',
                                        alignment: Alignment.center,
                                      ),
                                      Positioned(
                                        top: 36,
                                        child: Text(
                                          '0',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Center(
                                  child: Text(
                                    s.total_que,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    buildChartInfo(
                                      context,
                                      const Color(0xff88e68b),
                                      s.correct,
                                    ),
                                    buildChartInfo(
                                      context,
                                      const Color(0xffff8a8a),
                                      s.wrong,
                                    ),
                                    buildChartInfo(
                                      context,
                                      const Color(0xfff1f1f1),
                                      s.skipped,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                color: Theme.of(context)
                                    .hintColor
                                    .withOpacity(0.3),
                              ),
                            ),
                            padding: const EdgeInsetsDirectional.only(
                              start: 20.0,
                              end: 10.0,
                              top: 20.0,
                              bottom: 12.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '0%',
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                    const Spacer(),
                                    Container(
                                      padding: const EdgeInsetsDirectional.only(
                                        start: 12.0,
                                        end: 6.0,
                                        top: 4.0,
                                        bottom: 4.0,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color: Theme.of(context)
                                              .hintColor
                                              .withOpacity(0.3),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            s.all,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge
                                                ?.copyWith(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            Icons.arrow_drop_down,
                                            color: Theme.of(context).hintColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  s.correct_meter,
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Center(
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Image.asset(
                                        'assets/chart 3.png',
                                        alignment: Alignment.center,
                                      ),
                                      Positioned(
                                        top: 36,
                                        child: Text(
                                          '0',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Center(
                                  child: Text(
                                    s.quiz_played,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      buildChartInfo(
                                        context,
                                        const Color(0xff88e68b),
                                        s.correct,
                                      ),
                                      buildChartInfo(
                                        context,
                                        const Color(0xffff8a8a),
                                        s.wrong,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
      ),
    );
  }

  Column buildChartInfo(
    BuildContext context,
    Color color,
    String title,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 4,
          width: 20,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontSize: 8,
                color: Theme.of(context).hintColor,
              ),
        ),
      ],
    );
  }

  Column buildColumn(BuildContext context, String title, String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 14),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 12),
        ),
      ],
    );
  }
}
