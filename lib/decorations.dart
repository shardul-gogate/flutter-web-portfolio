import 'package:flutter/material.dart';
import 'package:web_portfolio/theme_manager.dart';

class Decorations {
  static BoxDecoration blueAccentShadow() => BoxDecoration(
    boxShadow: const [
      BoxShadow(
        blurRadius: 18,
        offset: Offset(0,2),
        color: Colors.white
      )
    ],
    color: ThemeManager.accentBlue,
    borderRadius: BorderRadius.circular(100)
  );

  static BoxDecoration blueAccent() => BoxDecoration(
    color: ThemeManager.accentBlue,
    borderRadius: BorderRadius.circular(200)
  );

  static BoxDecoration orangeAccentShadow() => BoxDecoration(
    boxShadow: const [
      BoxShadow(
        blurRadius: 18,
        offset: Offset(0,2),
        color: Colors.white
      )
    ],
    color: ThemeManager.accentOrange,
    borderRadius: BorderRadius.circular(100)
  );

  static BoxDecoration orangeAccent() => BoxDecoration(
    color: ThemeManager.accentOrange,
    borderRadius: BorderRadius.circular(200)
  );
}