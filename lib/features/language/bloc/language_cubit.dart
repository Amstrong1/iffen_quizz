import 'package:flutter/material.dart';
import 'package:iffen_quizz/app_config/app_config.dart';
import 'package:iffen_quizz/features/language/data/sources/local/language_local_data_source.dart';

class LanguageNotifier extends ChangeNotifier {
  Locale _currentLanguage = const Locale(AppConfig.languageDefault);

  Locale get currentLanguage => _currentLanguage;

  void selectLanguage(String countryCode) {
    _currentLanguage = Locale(countryCode);
    notifyListeners();
  }

  void getCurrentLanguage() async {
    String currLang = await LanguageLocalDataSource().getCurrentLanguage();
    selectLanguage(currLang);
  }

  Future<void> setCurrentLanguage(String langCode) async {
    await LanguageLocalDataSource().setCurrentLanguage(langCode);
    selectLanguage(langCode);
  }
}
