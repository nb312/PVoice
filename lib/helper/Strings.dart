///
/// Created by NieBin on 2019/6/22
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import '_helper.dart';

class Strings {
  static BuildContext _context;

  static set context(BuildContext context) => _context = context;

  static String get APP_NAME => LanguageHelper.value(_context, "app_name");

  static String get HOME_PAGE_ => LanguageHelper.value(_context, "home_page_");

  static String get MINE_ => LanguageHelper.value(_context, "mine_");

}
