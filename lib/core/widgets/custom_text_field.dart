import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week3/core/theming/colors.dart';
import 'package:week3/core/theming/styles.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.validator,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 6.h),
        isDense: true,
        suffixIcon: suffixIcon != null
            ? Align(
                alignment: Alignment.centerRight,
                widthFactor: 1.0,
                child: suffixIcon,
              )
            : null,
        suffixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.lightGray),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.mainColor),
        ),

        hintText: hintText,
        hintStyle: TextStyleManager.font14GrayBlueDarkRegular,
        fillColor: ColorsManager.lightGray,
      ),
    );
  }
}
