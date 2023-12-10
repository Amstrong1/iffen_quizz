import 'package:flutter/material.dart';
import 'package:iffen_quizz/app_config/app_config.dart';
import 'package:iffen_quizz/app_config/style.dart';
import 'package:iffen_quizz/components/back_button.dart';
import 'package:iffen_quizz/features/auth/login_navigator.dart';
import 'package:iffen_quizz/features/language/bloc/language_cubit.dart';
import 'package:iffen_quizz/generated/l10n.dart';

import '../../../helpers/app_pref.dart';

class LanguageSheet extends StatefulWidget {
  final bool fromRoot;

  const LanguageSheet({Key? key, this.fromRoot = true}) : super(key: key);

  @override
  LanguageSheetState createState() => LanguageSheetState();
}

class LanguageSheetState extends State<LanguageSheet> {
  late LanguageNotifier _languageCubit;

  String? selectedLocale;

  @override
  void initState() {
    super.initState();
    _languageCubit = LanguageNotifier();
    _loadSavedLanguage();
  }

  Future<void> _loadSavedLanguage() async {
    String savedLanguage = PreferenceHelper.getString('setLangage', defaultValue: 'fr');

    setState(() {
      selectedLocale = savedLanguage;
    });
  }

  Future<void> _saveSelectedLanguage(String languageCode) async {
    await PreferenceHelper.setString('setLangage', languageCode);
  }


  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    final s = S.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: widget.fromRoot ? null : const AppBarBackButton(),
        centerTitle: true,
        title: Text(
          s.change_language,
          style: TextStyle(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Theme.of(context).primaryColor,
            height: 80,
          ),
          ListView.builder(
            padding: const EdgeInsets.only(
              bottom: 100,
              top: 20,
            ),
            physics: const BouncingScrollPhysics(),
            itemCount: AppConfig.languagesSupported.length,
            itemBuilder: (context, index) {
              var langCode = AppConfig.languagesSupported.keys.elementAt(index);
              return Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: AppTheme.greyTextColor.withOpacity(0.3),
                    )),
                margin: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: RadioListTile(
                  title: Text(AppConfig.languagesSupported[langCode]!),
                  value: langCode,
                  groupValue: selectedLocale,
                  onChanged: (langCode) async {
                    setState(() {
                      selectedLocale = langCode as String;
                    });
                    // Save the selected language to SharedPreferences
                    await _saveSelectedLanguage(langCode as String);
                  },
                  activeColor: theme.primaryColor,
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.check),
        onPressed: () {
          _languageCubit.setCurrentLanguage(selectedLocale!);
          if (widget.fromRoot) {
            Navigator.pushNamed(context, LoginRoutes.login);
          } else {
            Navigator.pop(context);
          }
        },
      ),
    );
  }
}
