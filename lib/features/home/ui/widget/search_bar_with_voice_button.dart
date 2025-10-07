import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:week3/core/helpers/constant.dart';
import 'package:week3/core/helpers/spacing.dart';
import 'package:week3/core/theming/colors.dart';
import 'package:week3/core/theming/styles.dart';

class SearchBarWithVoiceButton extends StatelessWidget {
  const SearchBarWithVoiceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          height: 50.h,
          width: 275.w,
          decoration: BoxDecoration(
            color: ColorsManager.lightBlueGray,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            children: [
              SvgPicture.asset('${AppConstants.svgPath}Search.svg'),
              horizontalSpace(10),
              Text(
                'Search...',
                style: TextStyleManager.font15kGrayBlueDarkRegular,
              ),
            ],
          ),
        ),
        Container(
          height: 50.h,
          width: 50.w,
          padding: EdgeInsets.all(12.w),
          decoration: BoxDecoration(
            color: ColorsManager.mainColor,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: SvgPicture.asset('${AppConstants.svgPath}Voice.svg'),
        ),
      ],
    );
  }
}
