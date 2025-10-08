import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:week3/core/helpers/constant.dart';
import 'package:week3/features/home/ui/widget/circle_container.dart';

class HomeHeadr extends StatelessWidget {
  const HomeHeadr({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: CircleContainer(
            child: Padding(
              padding: EdgeInsets.all(9.w),
              child: SvgPicture.asset('${AppConstants.svgPath}menu.svg'),
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
    );
  }
}
