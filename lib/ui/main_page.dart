import 'package:flutter/material.dart';
import 'package:web_portfolio/theme_manager.dart';
import 'package:web_portfolio/ui/fragment_contact.dart';
import 'package:web_portfolio/ui/fragment_intro.dart';
import 'package:web_portfolio/ui/gap.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (builderContext) => Container(
          color: ThemeManager.primaryBackground,
          child: ListView(
            shrinkWrap: true,
            children: const [
              IntroFragment(),
              Gap(vertical: 50),
              ContactFragment(),
              Gap(vertical: 40)
            ]
          ),
        )
      )
    );
  }
}
