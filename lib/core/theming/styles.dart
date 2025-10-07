import 'package:flutter/material.dart';
import 'package:week3/core/theming/colors.dart';
import 'package:week3/core/theming/font_weight_helper.dart';

class TextStyleManager {
  static const TextStyle font40BlackBold = TextStyle(
    fontWeight: FontWeightHelper.bold,
    fontSize: 40,
    color: Colors.black,
  );
  static const TextStyle font26BlackBold = TextStyle(
    fontWeight: FontWeightHelper.semiBold,
    fontSize: 26,
    color: Colors.black,
  );
  static const TextStyle font14GrayBlueDarkRegular = TextStyle(
    fontWeight: FontWeightHelper.regular,
    fontSize: 14,
    color: ColorsManager.grayBlueDark,
  );
  static const TextStyle font13DarkGrayMedium = TextStyle(
    fontWeight: FontWeightHelper.medium,
    fontSize: 13,
    color: ColorsManager.darkGray,
  );
  static const TextStyle font17WhiteMedium = TextStyle(
    fontWeight: FontWeightHelper.medium,
    fontSize: 17,
    color: Colors.white,
  );
  static const TextStyle font12SuccessGreenRegular = TextStyle(
    fontWeight: FontWeightHelper.regular,
    fontSize: 12,
    color: ColorsManager.successGreen,
  );
}
