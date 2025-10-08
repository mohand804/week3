import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week3/core/theming/colors.dart';

class CircleContainer extends StatelessWidget {
  final Widget? child;
  final DecorationImage? image;
  const CircleContainer({super.key, this.child, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: 45.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: image,
        color: ColorsManager.lightBlueGray,
      ),
      child: child,
    );
  }
}
