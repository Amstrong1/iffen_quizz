import 'package:flutter/material.dart';

class AppTheme {
  static String fontFamily = 'ProductSans';
  static Color primaryColor = const Color(0xff833cf6);
  static Color primaryColorDark = const Color(0xff461597);
  static Color whiteColor = const Color(0xffffffff);
  static Color blackColor = const Color(0xff000000);
  static Color hintColor = const Color(0xffacafaf);
  static Color lightBlackColor = const Color(0xff3c3c3d);
  static Color greenButtonTopColor = const Color(0xff88e68b);
  static Color greyTextColor = const Color(0xffc7c5cc);

  // static Color textFieldBorderColor = const Color(0xfffcfcfc);

  static ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: whiteColor,
    primaryColorDark: primaryColorDark,
    fontFamily: fontFamily,
    hintColor: hintColor,
    primaryColor: primaryColor,
    // disabledColor: textFieldBorderColor,

    ///appBar theme
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: whiteColor,
      iconTheme: const IconThemeData(
          // color: headerColor,
          ),
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: blackColor,
      ),
    ),

    ///text theme
    textTheme: TextTheme(
      ///14
      bodySmall: TextStyle(
        fontSize: 14,
        color: hintColor,
      ),

      ///18
      bodyLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: blackColor,
      ),

      ///10
      bodyMedium: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: whiteColor,
      ),

      ///18
      titleLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: whiteColor,
      ),

      ///24
      headlineSmall: TextStyle(
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
        fontSize: 24,
        color: whiteColor,
      ),
    ),
  );
}

/// NAME         SIZE  WEIGHT  SPACING
/// headline1    96.0  light   -1.5
/// headline2    60.0  light   -0.5
/// headline3    48.0  regular  0.0
/// headline4    34.0  regular  0.25
/// headlineSmall    24.0  regular  0.0
/// titleLarge    20.0  medium   0.15
/// subtitle1    16.0  regular  0.15
/// subtitle2    14.0  medium   0.1
/// body1        16.0  regular  0.5   (bodyLarge)
/// body2        14.0  regular  0.25  (bodyMedium)
/// button       14.0  medium   1.25
/// bodySmall      12.0  regular  0.4
/// overline     10.0  regular  1.5
