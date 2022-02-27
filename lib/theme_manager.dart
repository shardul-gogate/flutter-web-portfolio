import 'package:flutter/material.dart';

class ThemeManager {
  static bool isDarkMode = false;
  static final List<Color> _blue = [
    const Color(0xff1a237e),
    const Color(0xff0d47a1),
    const Color(0xff3f51b5),
    const Color(0xff1565c0),
    const Color(0xff0277bd),
    const Color(0xff0288d1),
    const Color(0xff039be5),
    const Color(0xff03a9f4),
    const Color(0xffa9d1ff)
  ];
  static final List<Color> _red = [
    const Color(0xffb71c1c),
    const Color(0xffc62828),
    const Color(0xffd32f2f),
    const Color(0xffe53935),
    const Color(0xfff44336)
  ];
  static final List<Color> _orange = [
    const Color(0xfff57c00),
    const Color(0xfffb8c00),
    const Color(0xffff9800),
    const Color(0xffffa726),
    const Color(0xffffb74d)
  ];
  static final List<Color> _green = [
    const Color(0xff1b5e20),
    const Color(0xff33691e),
    const Color(0xff388e3c),
    const Color(0xff689f38),
    const Color(0xff7cb342)
  ];
  static final List<Color> _grey = [
    const Color(0xff212121),
    const Color(0xff263238),
    const Color(0xff37474f),
    const Color(0xff455a64),
    const Color(0xff607d8b)
  ];
  static final List<Color> _yellow = [
    const Color(0xfff57f17),
    const Color(0xfffbc02d),
    const Color(0xffffeb3b),
    const Color(0xfffff59d)
  ];
  static final List<Color> _brown = [
    const Color(0xff3e2723),
    const Color(0xff5d4037),
    const Color(0xff6d4c41),
    const Color(0xff795548),
    const Color(0xffbcaaa4)
  ];

  static Color primaryBackground = Colors.white;
  static Color primaryText = Colors.black;
  static Color primaryAccent = _grey[0];
  static Color accentBlue = _blue[0];
  static Color accentRed = _red[0];
  static Color accentYellow = _yellow[0];
  static Color accentGreen = _green[0];
  static Color accentOrange = _orange[0];
  static Color accentBrown = _brown[0];

  static List<Color> getGreyGradient() => _grey;
  static List<Color> getLightBlueGradient() => _blue;
  static List<Color> getRedGradient() => _red;
  static List<Color> getYellowGradient() => _yellow;
  static List<Color> getGreenGradient() => _green;
  static List<Color> getOrangeGradient() => _orange;
  static List<Color> getBrownGradient() => _brown;

  static void setDarkMode() {
    isDarkMode = true;
    accentBlue = _blue[0];
    accentRed = _red[0];
    accentYellow = _yellow[0];
    accentGreen = _green[0];
    accentOrange = _orange[0];
    accentBrown = _brown[0];
    primaryBackground = _grey[0];
    primaryText = Colors.white;
    primaryAccent = Colors.black;
  }

  static void setLightMode() {
    isDarkMode = false;
    accentBlue = _blue[_blue.length - 1];
    accentRed = _red[_red.length - 1];
    accentYellow = _yellow[_yellow.length - 1];
    accentGreen = _green[_green.length - 1];
    accentOrange = _orange[_orange.length - 1];
    accentBrown = _brown[_brown.length - 1];
    primaryBackground = Colors.white;
    primaryText = Colors.black;
    primaryAccent = _grey[_grey.length - 1];
  }
}