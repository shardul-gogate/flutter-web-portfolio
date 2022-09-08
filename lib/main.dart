import 'package:flutter/material.dart';
import 'package:web_portfolio/strings.dart';
import 'package:web_portfolio/theme_manager.dart';
import 'package:web_portfolio/ui/main_page.dart';

void main() {
  runApp(RestartWidget(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key) {
    ThemeManager.setDarkMode();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ApplicationStrings.portfolioTitle,
      initialRoute: "/",
      theme: ThemeData(fontFamily: 'Comfortaa'),
      routes: {
        '/': (context) => const MainPage(),
      }
    );
  }
}

class RestartWidget extends StatefulWidget {
  const RestartWidget({Key? key, required this.child});

  final Widget child;

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_RestartWidgetState>()!.restartApp();
  }

  @override
  _RestartWidgetState createState() => _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      if(!mounted) return;
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child,
    );
  }
}
