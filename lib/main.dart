import 'package:flutter/material.dart';
import 'page/_page.dart';
import 'helper/_helper.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        //主要是这个
        LanguageDelegate(["en", "zh"]),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        //还有这里的语言
        ///if you do not know about country code ,you can see this: https://www.mobilefish.com/tutorials/country_language_codes/countrylanguagecodes.html
        const Locale("en", "US"),
        const Locale("zh", "CN"),
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MainPage(),
    );
  }
}
