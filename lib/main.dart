import 'package:flutter/material.dart';
import 'package:web_portfolio/strings.dart';
import 'package:web_portfolio/theme_manager.dart';
import 'package:web_portfolio/ui/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key) {
    DateTime dateTime = DateTime.now();
    if(dateTime.hour < 19 && dateTime.hour > 6) {
      ThemeManager.setLightMode();
    } else {
      ThemeManager.setDarkMode();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ApplicationStrings.portfolioTitle,
      home: const MainPage(),
      theme: ThemeData(fontFamily: 'Ubuntu')
    );
  }
}
