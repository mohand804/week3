import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week3/core/theming/colors.dart';

class CircleContainer extends StatelessWidget {
  final Widget child;
  const CircleContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: 45.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: ColorsManager.lightBlueGray,
      ),
      child: child,
    );
  }
}
