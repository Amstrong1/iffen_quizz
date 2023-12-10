import 'package:flutter/material.dart';
import 'package:iffen_quizz/app_config/app_config.dart';
import 'package:iffen_quizz/app_config/style.dart';
import 'package:iffen_quizz/components/back_button.dart';
import 'package:iffen_quizz/components/custom_button.dart';
import 'package:iffen_quizz/features/language/bloc/language_cubit.dart';
import 'package:iffen_quizz/generated/l10n.dart';
import 'package:iffen_quizz/routes/routes.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late LanguageNotifier _languageCubit;
  late Locale _currentLocale;

  @override
  void initState() {
    super.initState();
    _languageCubit = LanguageNotifier();
    _languageCubit.getCurrentLanguage();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: const AppBarBackButton(),
        title: Text(
          s.settings,
          style: TextStyle(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            color: Theme.of(context).primaryColor,
            height: 60,
          ),
          Positioned(
            bottom: 30,
            left: 30,
            right: 30,
            child: CustomButton(
              title: s.update,
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            children: [
              const SizedBox(
                height: 30,
              ),
              buildItem(
                context,
                s.app_language,
                AppConfig.languagesSupported[_currentLocale.languageCode] ?? '',
                onTap: () =>
                    Navigator.pushNamed(context, PageRoutes.languageScreen),
              ),
              const SizedBox(
                height: 15,
              ),
              buildItem(context, s.notification, s.on),
              const SizedBox(
                height: 15,
              ),
              buildItem(context, s.app_sound, s.on),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildItem(BuildContext context, String title, String subtitle,
      {Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
          bottom: 24,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppTheme.greyTextColor.withOpacity(0.3),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: 16,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
