import 'package:flutter/material.dart';
import 'package:web_portfolio/theme_manager.dart';

class TextStyles {
  static TextStyle getTitleNameStyle() => TextStyle(
    color: ThemeManager.primaryText,
    fontSize: 40,
    fontWeight: FontWeight.bold
  );

  static TextStyle getTitleGreetStyle() => TextStyle(
      color: ThemeManager.primaryText,
      fontSize: 16
  );

  static TextStyle getRoleIntro() => TextStyle(
      color: ThemeManager.primaryText,
      fontSize: 26,
  );

  static TextStyle getTitleRoleStyle() => TextStyle(
      color: ThemeManager.primaryText,
      fontSize: 26,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic
  );
}