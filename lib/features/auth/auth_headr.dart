import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week3/core/helpers/spacing.dart';
import 'package:week3/core/theming/colors.dart';
import 'package:week3/core/theming/styles.dart';

class AuthHeadr extends StatelessWidget {
  final String title;
  final String? subtitle;
  const AuthHeadr({super.key, required this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 45.h,
          width: 45.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorsManager.lightBlueGray,
          ),
          child: Icon(Icons.arrow_back, color: Colors.black),
        ),
        verticalSpace(16),
        Center(
          child: Text(
            title,
            style: TextStyleManager.font28GrayBlueDarkSemiBold,
          ),
        ),
        verticalSpace(5),
        Center(
          child: Text(
            subtitle ?? '',
            style: TextStyleManager.font15GrayBlueDarkRegular,
          ),
        ),
      ],
    );
  }
}
