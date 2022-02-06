import 'package:flutter/material.dart';
import 'package:web_portfolio/theme_manager.dart';

class Decorations {
  static BoxDecoration roundedContainerShadow() => BoxDecoration(
    boxShadow: const [
      BoxShadow(
          blurRadius: 18,
          offset: Offset(0,2)
      )
    ],
    color: ThemeManager.accentBlue,
    borderRadius: BorderRadius.circular(12)
  );

  static BoxDecoration accentContainer() => BoxDecoration(
    color: ThemeManager.accentBlue,
    borderRadius: BorderRadius.circular(12)
  );
}