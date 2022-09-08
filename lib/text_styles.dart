import 'package:flutter/material.dart';
import 'package:web_portfolio/theme_manager.dart';

class TextStyles {
  static TextStyle getTitleNameStyle() => TextStyle(
    color: ThemeManager.primaryText,
    fontSize: 40,
    fontWeight: FontWeight.w600
  );

  static TextStyle getTitleGreetStyle() => TextStyle(
    color: ThemeManager.primaryText,
    fontSize: 18
  );

  static TextStyle getRoleIntro() => TextStyle(
    color: ThemeManager.primaryText,
    fontSize: 24,
  );

  static TextStyle getTitleRoleStyle() => TextStyle(
    color: ThemeManager.primaryText,
    fontSize: 26,
    fontWeight: FontWeight.w600,
    // fontStyle: FontStyle.italic
  );

  static TextStyle getTimelineElementTitle() => TextStyle(
    color: ThemeManager.primaryText,
    fontSize: 24,
    fontWeight: FontWeight.w600
  );

  static TextStyle getTimelineElementLocation() => TextStyle(
    color: ThemeManager.primaryText,
    fontSize: 20,
    // fontStyle: FontStyle.italic
  );

  static TextStyle getTimelineElementDescription() => TextStyle(
    color: ThemeManager.primaryText,
    fontSize: 16
  );

  static TextStyle getTimelineTimeStamp() => TextStyle(
    color: ThemeManager.primaryText,
    fontSize: 14,
  );
}