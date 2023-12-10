import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
// import 'package:iffen_quizz/app_config/theme_cubit.dart';
import 'package:iffen_quizz/features/auth/login_navigator.dart';
import 'package:iffen_quizz/features/bottom_navigation/home/home_screen.dart';
import 'package:iffen_quizz/features/language/bloc/language_cubit.dart';
import 'package:iffen_quizz/generated/l10n.dart';
import 'package:iffen_quizz/helpers/app_pref.dart';
import 'package:iffen_quizz/routes/routes.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  PreferenceHelper.init();

  bool isFirstLaunch =
      PreferenceHelper.getBool('firstlaunch', defaultValue: true);

  runApp(
    Phoenix(
      child: MyApp(isFirstLaunch: isFirstLaunch),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key, required this.isFirstLaunch}) : super(key: key);

  final bool isFirstLaunch;

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ThemeData _theme = ThemeData(); 
  final Locale _locale = const Locale('en'); 

  void _initializeData() async {
    // ThemeCubit().getCurrentTheme();
    LanguageNotifier().getCurrentLanguage();
  }

  @override
  void initState() {
    super.initState();
    _initializeData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: _locale,
      theme: _theme,
      home: widget.isFirstLaunch ? const LoginNavigator() : const HomeScreen(),
      routes: PageRoutes().routes(),
      debugShowCheckedModeBanner: false,
    );
  }
}


// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter_phoenix/flutter_phoenix.dart';
// import 'package:iffen_quizz/app_config/theme_cubit.dart';
// import 'package:iffen_quizz/features/auth/login_navigator.dart';
// import 'package:iffen_quizz/features/bottom_navigation/home/home_screen.dart';
// import 'package:iffen_quizz/features/language/bloc/language_cubit.dart';
// import 'package:iffen_quizz/routes/routes.dart';

// import 'firebase_options.dart';
// import 'generated/l10n.dart';
// import 'helpers/app_pref.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   if (Firebase.apps.isEmpty) {
//     await Firebase.initializeApp(
//       options: DefaultFirebaseOptions.currentPlatform,
//     );
//   }

//   PreferenceHelper.init();

//   bool isFirstLaunch =
//       PreferenceHelper.getBool('firstlaunch', defaultValue: true);

//   if (kDebugMode) {
//     print(isFirstLaunch);
//   }
  
//   runApp(
//     Phoenix(
//       child: MultiBlocProvider(
//         providers: [
//           BlocProvider<LanguageCubit>(
//             create: (context) => LanguageCubit()..getCurrentLanguage(),
//           ),
//           BlocProvider<ThemeCubit>(
//             create: (context) => ThemeCubit()..getCurrentTheme(),
//           ),
//         ],
//         child: MyApp(isFirstLaunch: isFirstLaunch),
//       ),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key, required this.isFirstLaunch}) : super(key: key);

//   final bool isFirstLaunch;

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ThemeCubit, ThemeData>(
//       builder: (_, theme) {
//         return BlocBuilder<LanguageCubit, Locale>(
//           builder: (_, locale) {
//             return MaterialApp(
//               localizationsDelegates: const [
//                 S.delegate,
//                 GlobalMaterialLocalizations.delegate,
//                 GlobalCupertinoLocalizations.delegate,
//                 GlobalWidgetsLocalizations.delegate,
//               ],
//               supportedLocales: S.delegate.supportedLocales,
//               locale: locale,
//               theme:  theme,
//               home: isFirstLaunch ? const LoginNavigator() : const HomeScreen(),
//               routes: PageRoutes().routes(),
//               debugShowCheckedModeBanner: false,
//             );
//           },
//         );
//       },
//     );
//   }
// }
