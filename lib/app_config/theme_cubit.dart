import 'package:flutter/material.dart';

import 'package:iffen_quizz/app_config/local_data_source.dart';
import 'package:iffen_quizz/app_config/style.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _themeData = AppTheme.appTheme;
  String _themeType = 'light';

  ThemeData get themeData => _themeData;

  String get themeType => _themeType;

  void selectTheme(String theme) {
    _themeType = theme;
    _themeData = getTheme(theme);
    notifyListeners();
  }

  void getCurrentTheme() async {
    _themeType = await LocalDataSource().getCurrentTheme();
    _themeData = getTheme(_themeType);
    notifyListeners();
  }

  Future<void> setCurrentTheme(String theme) async {
    await LocalDataSource().setCurrentTheme(theme);
    _themeType = theme;
    _themeData = getTheme(theme);
    notifyListeners();
  }

  ThemeData getTheme(String theme) {
    return /*theme == "dark" ? AppTheme.appDarkTheme :*/ AppTheme.appTheme;
  }
}



// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:iffen_quizz/app_config/local_data_source.dart';
// import 'package:iffen_quizz/app_config/style.dart';

// class ThemeCubit extends Cubit<ThemeData> {
//   ThemeCubit() : super(AppTheme.appTheme);

//   String themeType = 'light';

//   void selectTheme(ThemeData theme) {
//     emit(theme);
//   }

//   void getCurrentTheme() async {
//     themeType = await LocalDataSource().getCurrentTheme();
//     ThemeData themeData = getTheme(themeType);
//     selectTheme(themeData);
//   }

//   Future<void> setCurrentTheme(String theme) async {
//     await LocalDataSource().setCurrentTheme(theme);
//     themeType = theme;
//     ThemeData themeData = getTheme(theme);
//     selectTheme(themeData);
//   }

//   ThemeData getTheme(String theme) {
//     return /*theme == "dark" ? AppTheme.appDarkTheme :*/ AppTheme.appTheme;
//   }
// }
