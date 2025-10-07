import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:week3/core/helpers/constant.dart';
import 'package:week3/core/helpers/spacing.dart';
import 'package:week3/core/theming/colors.dart';
import 'package:week3/core/theming/styles.dart';
import 'package:week3/features/home/ui/widget/circle_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleContainer(
                    child: Padding(
                      padding: EdgeInsets.all(9.w),
                      child: SvgPicture.asset(
                        '${AppConstants.svgPath}menu.svg',
                      ),
                    ),
                  ),
                  CircleContainer(
                    child: Padding(
                      padding: EdgeInsets.all(9.w),
                      child: SvgPicture.asset('${AppConstants.svgPath}Bag.svg'),
                    ),
                  ),
                ],
              ),
              verticalSpace(16),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello',
                      style: TextStyleManager.font28GrayBlueDarkSemiBold,
                    ),
                    Text(
                      'Welcome to Laza.',
                      style: TextStyleManager.font15GrayBlueDarkRegular,
                    ),
                  ],
                ),
              ),
              verticalSpace(16),
              Row(
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
              ),
              verticalSpace(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Choose Category',
                    style: TextStyleManager.font17kDarkGrayMedium,
                  ),
                  Text(
                    'View All',
                    style: TextStyleManager.font15kGrayBlueDarkRegular,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
