import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week3/core/helpers/spacing.dart';
import 'package:week3/core/theming/colors.dart';
import 'package:week3/core/theming/styles.dart';

class MenuRowItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget? trailing;
  final Color? iconBackgroundColor;
  final Color? iconColor;

  const MenuRowItem({
    super.key,
    required this.icon,
    required this.title,
    this.trailing,
    this.iconBackgroundColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Row(
        children: [
          Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: iconBackgroundColor ?? ColorsManager.veryLightGray,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(
              icon,
              color: iconColor ?? ColorsManager.darkGray,
              size: 20.sp,
            ),
          ),
          horizontalSpace(16),
          Expanded(
            child: Text(
              title,
              style: TextStyleManager.font15kGrayBlueDarkRegular.copyWith(
                color: ColorsManager.darkGray,
              ),
            ),
          ),
          if (trailing != null)
            trailing!
          else
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 16.sp,
              color: ColorsManager.grayBlueDark,
            ),
        ],
      ),
    );
  }
}
