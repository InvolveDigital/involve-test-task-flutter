import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bottomsheet/components/button/button.dart';
import 'package:bottomsheet/schemata/color_schema.dart';
import 'package:bottomsheet/schemata/text_schema.dart';

class BottomSheetSlider {
  final Widget? icon;
  final bool title;
  final String paragraph;
  final String? buttonText;
  final Widget? widget;

  BottomSheetSlider({
    this.icon,
    this.title = true,
    this.paragraph = '',
    this.buttonText,
    this.widget,
  });

  showBottomSheet() {
    return Get.bottomSheet(
      Wrap(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              color: ColorSchema.box(Get.context!),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
            ),
            // height: 200,
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 12),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      color: ColorSchema.utility2(Get.context!),
                    ),
                    width: 98,
                    height: 4,
                  ),
                  SizedBox(height: 32),
                  if (icon != null)
                    Column(
                      children: [
                        icon!,
                        SizedBox(height: 24),
                      ],
                    ),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextSchema.title3.copyWith(
                      fontWeight: FontWeight.w600,
                      color: ColorSchema.headline(Get.context!),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    paragraph,
                    textAlign: TextAlign.center,
                    style: TextSchema.footnote
                        .copyWith(color: ColorSchema.paragraph(Get.context!)),
                  ),
                  if (buttonText != null)
                    Column(
                      children: [
                        SizedBox(height: 32),
                        Button(
                          onTap: () => Get.back(),
                          title: buttonText!,
                          type: 'black',
                        ),
                        SizedBox(height: 16),
                      ],
                    ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
