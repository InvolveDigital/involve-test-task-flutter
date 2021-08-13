import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bottomsheet/schemata/color_schema.dart';

abstract class TextSchema {
  static BuildContext context = Get.context!;
  static TextStyle mediumTitle = TextStyle(
    fontSize: 32,
    letterSpacing: 0.374,
    color: ColorSchema.headline(context),
    // fontFamily: '.SF Pro Text',
    // fontFamily: '.SF Pro Display',
    // fontFamily: '.SF UI Text',
    // fontFamily: '.SF UI Display',
  );

  static const TextStyle caption2 = TextStyle(
    fontSize: 11,
    // height: 13,
    letterSpacing: 0.066,
  );

  static TextStyle caption1 = TextStyle(
    fontSize: 12,
    color: ColorSchema.paragraph(context),

    // height: 16,
  );

  static const TextStyle footnote = TextStyle(
    fontSize: 13,
    // height: 1.16,
    letterSpacing: -0.078,
  );

  static const TextStyle footnoteLarge = TextStyle(
    fontSize: 14,
    // height: 18,
    letterSpacing: -0.078,
  );

  static TextStyle subheadline = TextStyle(
    fontSize: 15,
    // height: 20,
    letterSpacing: -0.24,
  );

  static const TextStyle callout = TextStyle(
    fontSize: 16,
    // height: 21,
    letterSpacing: -0.32,
  );

  static const TextStyle title2 = TextStyle(
    fontSize: 22,
    // height: 28,
    letterSpacing: -0.35,
  );

  static const TextStyle footnoteMedium = TextStyle(
    fontSize: 13,
    // height: 18,
    letterSpacing: -0.078,
  );

  static TextStyle subheadlineMedium = TextStyle(
    fontSize: 15,
    // height: 20,
    letterSpacing: -0.24,
  );

  static const TextStyle title3 = TextStyle(
    fontSize: 20,
    // height: 24,
    letterSpacing: -0.52,
  );

  static const TextStyle title1 = TextStyle(
    fontSize: 28,
    // height: 28,
    letterSpacing: 0.36,
  );

  static const TextStyle titleMedium = TextStyle(
    fontSize: 32,
    // height: 39,
    letterSpacing: -0.72,
  );

  static const TextStyle titleLarge = TextStyle(
    fontSize: 34,
    // height: 41,
    letterSpacing: 0.374,
  );
}
