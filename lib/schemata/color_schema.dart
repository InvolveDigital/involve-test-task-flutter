import 'package:flutter/material.dart';

class ColorSchema {
  static bool isDarkTheme(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark;
  }

  static Brightness keyboard(BuildContext context) {
    return isDarkTheme(context) ? Brightness.dark : Brightness.light;
  }

  static Color universal(BuildContext context) {
    return isDarkTheme(context) ? DarkTheme.universal : LightTheme.universal;
  }

  static Color universalSwap(BuildContext context) {
    return isDarkTheme(context)
        ? DarkTheme.universalSwap
        : LightTheme.universalSwap;
  }

  static Color background(BuildContext context) {
    return isDarkTheme(context) ? DarkTheme.background : LightTheme.background;
  }

  static Color box(BuildContext context) {
    return isDarkTheme(context) ? DarkTheme.box : LightTheme.box;
  }

  static Color headline(BuildContext context) {
    return isDarkTheme(context) ? DarkTheme.headline : LightTheme.headline;
  }

  static Color paragraph(BuildContext context) {
    return isDarkTheme(context) ? DarkTheme.paragraph : LightTheme.paragraph;
  }

  static Color utility1(BuildContext context) {
    return isDarkTheme(context) ? DarkTheme.utility1 : LightTheme.utility1;
  }

  static Color utility2(BuildContext context) {
    return isDarkTheme(context) ? DarkTheme.utility2 : LightTheme.utility2;
  }

  static Color utility3(BuildContext context) {
    return isDarkTheme(context) ? DarkTheme.utility3 : LightTheme.utility3;
  }

  static Color utility3Swap(BuildContext context) {
    return isDarkTheme(context) ? LightTheme.utility3 : DarkTheme.utility3;
  }

  static Color utility4(BuildContext context) {
    return isDarkTheme(context) ? DarkTheme.utility4 : LightTheme.utility4;
  }

  static Color blue(BuildContext context) {
    return SingleColor.blue;
  }

  static Color blueTap(BuildContext context) {
    return SingleColor.blueTap;
  }

  static Color blue600(BuildContext context) {
    return SingleColor.blu600;
  }

  static Color onboarding1 = SingleColor.onboarding1;

  static Color onboarding2 = SingleColor.onboarding2;

  static Color onboarding3 = SingleColor.onboarding3;

  static const ColorSwatch red = MaterialColor(
    0xFFFF3B30,
    <int, Color>{
      600: Color(0xFFFF170A),
    },
  );

  static const ColorSwatch green = MaterialColor(
    0xFF34C759,
    <int, Color>{
      600: Color(0xFF32BE55),
    },
  );

  static const ColorSwatch orange = MaterialColor(
    0xFFFF9500,
    <int, Color>{
      100: Color(0xFFFFD599),
      600: Color(0xFFF58F00),
    },
  );
}

class SingleColor {
  static const blue = const Color(0xff007AFF);
  static const blueTap = const Color(0xff0062CC);
  static const blu600 = const Color(0xff0075F5);

  static const onboarding1 = const Color(0xFFF7C20E);
  static const onboarding2 = const Color(0xFF4DC4FA);
  static const onboarding3 = const Color(0xFF34C759);
}

class LightTheme {
  static const universal = const Color(0xffffffff);
  static const universalSwap = const Color(0xff000000);
  static const background = const Color(0xffF3F4F5);
  static const box = const Color(0xffffffff);
  static const headline = const Color(0xff191B1E);
  static const paragraph = const Color(0xff8D949D);
  static const utility1 = const Color(0xffCFD5DA);
  static const utility2 = const Color(0xffE8EBEF);
  static const utility3 = const Color(0xffDFE0E2);
  static const utility4 = const Color(0xffF3F4F5);
}

class DarkTheme {
  static const universal = const Color(0xff000000);
  static const universalSwap = const Color(0xffffffff);
  static const background = const Color(0xff000000);
  static const box = const Color(0xff161617);
  static const headline = const Color(0xffF4F4F4);
  static const paragraph = const Color(0xff8E8E92);
  static const utility1 = const Color(0xff4E4E50);
  static const utility2 = const Color(0xff1C1C1D);
  static const utility3 = const Color(0xff262628);
  static const utility4 = const Color(0xff242425);
}
