import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week3/core/theming/colors.dart';
import 'package:week3/core/theming/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.isLoading, required this.text});
  final bool isLoading;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20.h),
      height: 75.h,
      decoration: BoxDecoration(color: ColorsManager.mainColor),
      child: isLoading
          ? const Center(child: CircularProgressIndicator(color: Colors.white))
          : Center(
              child: Text(text, style: TextStyleManager.font17WhiteMedium),
            ),
    );
  }
}
