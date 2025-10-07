import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week3/core/helpers/spacing.dart';
import 'package:week3/core/theming/colors.dart';
import 'package:week3/core/theming/styles.dart';

class SignupHeadr extends StatelessWidget {
  const SignupHeadr({super.key});

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
        Center(child: Text('Sign Up', style: TextStyleManager.font26BlackBold)),
      ],
    );
  }
}
