import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/main.dart';
import 'package:web_portfolio/theme_manager.dart';
import 'package:web_portfolio/ui/fragment_contact.dart';
import 'package:web_portfolio/ui/fragment_intro.dart';
import 'package:web_portfolio/ui/gap.dart';
import 'package:web_portfolio/ui/fragment_timeline.dart';

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
              Align(
                alignment: Alignment.centerRight,
                child: ThemeSwitchButton()
              ),
              IntroFragment(),
              Gap(vertical: 50),
              ContactFragment(),
              Gap(vertical: 40),
              TimelineFragment(),
              Gap(vertical: 40)
            ]
          ),
        )
      )
    );
  }
}

class ThemeSwitchButton extends StatefulWidget {
  const ThemeSwitchButton({Key? key}) : super(key: key);

  @override
  _ThemeSwitchButtonState createState() => _ThemeSwitchButtonState();
}

class _ThemeSwitchButtonState extends State<ThemeSwitchButton> {

  late Icon _switchIcon;

  final Icon _moon = const Icon(
    CupertinoIcons.moon,
    color: Colors.black,
    size: 30,
  );

  final Icon _sun = const Icon(
    CupertinoIcons.sun_max_fill,
    color: Colors.white,
    size: 30,
  );

  @override
  void initState() {
    if(ThemeManager.isDarkMode) {
      _switchIcon = _sun;
    } else {
      _switchIcon = _moon;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      child: IconButton(
        onPressed: () {
          onSwitchPressed();
        },
        icon: _switchIcon
      ),
    );
  }

  void onSwitchPressed() {
    if(ThemeManager.isDarkMode) {
      ThemeManager.setLightMode();
    } else {
      ThemeManager.setDarkMode();
    }
    RestartWidget.restartApp(context);
  }
}
