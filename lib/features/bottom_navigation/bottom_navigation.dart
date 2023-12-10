import 'package:flutter/material.dart';
import 'package:iffen_quizz/features/bottom_navigation/account/account_screen.dart';
import 'package:iffen_quizz/features/bottom_navigation/category/explore_category.dart';
import 'package:iffen_quizz/features/bottom_navigation/home/home_screen.dart';

import 'leaderboard/leaderboard_screen.dart';

class AppNavigation extends StatefulWidget {
  const AppNavigation({Key? key}) : super(key: key);

  @override
  AppNavigationState createState() => AppNavigationState();
}

class AppNavigationState extends State<AppNavigation> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const HomeScreen(),
    const ExploreCategoryScreen(),
    LeaderboardScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationBarItem> bottomBarItems = [
      BottomNavigationBarItem(
        icon: Image.asset('assets/footer/ic_home.png'),
        activeIcon: Image.asset('assets/footer/ic_home_act.png'),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/footer/ic_category.png'),
        activeIcon: Image.asset('assets/footer/ic_category_act.png'),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/footer/ic_leaderboard.png'),
        activeIcon: Image.asset('assets/footer/ic_leaderboard_act.png'),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/footer/ic_account.png'),
        activeIcon: Image.asset('assets/footer/ic_account_act.png'),
        label: '',
      ),
    ];
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _children[_currentIndex],
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Theme.of(context).primaryColorDark,
            type: BottomNavigationBarType.fixed,
            items: bottomBarItems,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
