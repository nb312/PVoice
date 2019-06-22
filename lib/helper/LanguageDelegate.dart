///
/// Created by NieBin on 2019/6/22
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert' show json;

class LanguageDelegate extends LocalizationsDelegate<LanguageHelper> {
  List<String> _languages;

  LanguageDelegate(List<String> languages) {
    this._languages = languages;
  }

  @override
  bool isSupported(Locale locale) => _languages.contains(locale.languageCode);

  @override
  Future<LanguageHelper> load(Locale locale) {
    return LanguageHelper.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<LanguageHelper> old) => false;
}

class LanguageHelper {
  Locale _local;
  static Map<dynamic, dynamic> _languageValues;

  LanguageHelper(Locale loc) {
    _local = loc;
    _languageValues = null;
  }

  static Future<LanguageHelper> load(Locale locale) async {
    LanguageHelper helper = LanguageHelper(locale);
    String langStr =
        await rootBundle.loadString(_languageFile(locale.languageCode));
    _languageValues = json.decode(langStr);
    return helper;
  }

  static String value(BuildContext context, String key) {
    return Localizations.of<LanguageHelper>(context, LanguageHelper)
        ._value(key);
  }

  String _value(String key) {
    return _languageValues[key] ?? "";
  }

  String get currentLang => _local.languageCode;
}

///obtain the language file.
String _languageFile(String lang) => "locale/i18n_$lang.json";
