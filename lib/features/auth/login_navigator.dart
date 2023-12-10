import 'package:flutter/material.dart';

import 'package:iffen_quizz/features/language/ui/language_sheet.dart';
import 'package:iffen_quizz/routes/routes.dart';

import '../bottom_navigation/home/home_screen.dart';
import 'verification/ui/verification_page.dart';
import 'login/ui/login_page.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class LoginRoutes {
  static const String loginRoot = 'login/';
  static const String login = 'login/login';
  static const String registration = 'login/registration';
  static const String verification = 'login/verification';
}

class LoginNavigator extends StatefulWidget {
  const LoginNavigator({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginNavigatorState createState() => _LoginNavigatorState();
}

class _LoginNavigatorState extends State<LoginNavigator> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        var canPop = navigatorKey.currentState!.canPop();
        if (canPop) {
          navigatorKey.currentState!.pop();
        }
        return !canPop;
      },
      child: Navigator(
        key: navigatorKey,
        initialRoute: LoginRoutes.loginRoot,
        onGenerateRoute: (RouteSettings settings) {
          late WidgetBuilder builder;
          switch (settings.name) {
            case LoginRoutes.loginRoot:
              builder = (BuildContext _) => const LanguageSheet();
              break;
            case LoginRoutes.login:
              builder = (BuildContext _) => LoginPage(
                    onSkipLogin: () {
                      setState(() {
                        Navigator.popAndPushNamed(
                          context,
                          PageRoutes.bottomNavigation,
                        );
                      });
                    },
                  );
              break;
            case LoginRoutes.registration:
              String? phoneNumber = settings.arguments as String?;
              if (phoneNumber != null && phoneNumber.isNotEmpty) {
                setState(() {
                  // Navigate to home page if phone number is not empty
                  builder = (BuildContext _) => const HomeScreen();
                });
              } else {
                setState(() {
                  // Show an error message or navigate to an error page
                  builder = (BuildContext _) => _buildAlertDialog(context);
                });
              }
              break;
            case LoginRoutes.verification:
              builder = (BuildContext _) => VerificationPage(
                    () {
                      setState(() {
                        Navigator.popAndPushNamed(
                          context,
                          PageRoutes.bottomNavigation,
                        );
                      });
                    },
                  );
            default:
              // Handle unknown routes, you can either redirect to a default page
              // or show an error page.
              builder = (BuildContext _) => _buildUnknownRoute(context);
              break;
          }
          return MaterialPageRoute(builder: builder, settings: settings);
        },
        onPopPage: (Route<dynamic> route, dynamic result) {
          return route.didPop(result);
        },
      ),
    );
  }

  Widget _buildUnknownRoute(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Error'),
    ),
    body: const Center(
      child: Text('Unknown route'),
    ),
  );
}

  Widget _buildAlertDialog(BuildContext context) {
    return AlertDialog(
      title: const Text('Error'),
      content: const Text('Phone number cannot be empty.'),
      actions: [
        TextButton(
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
