import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:week3/core/helpers/spacing.dart';
import 'package:week3/core/theming/colors.dart';
import 'package:week3/core/theming/styles.dart';
import 'package:week3/features/home/data/model/categories_response_model.dart';

class CategoriesListVeiwItem extends StatelessWidget {
  final Category category;
  const CategoriesListVeiwItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        color: ColorsManager.lightBlueGray,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(6.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: 40.h,
            width: 40.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: SvgPicture.network(
                category.coverPictureUrl,
                colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
              ),
            ),
          ),
          horizontalSpace(10),
          Flexible(
            child: Text(
              category.name,
              style: TextStyleManager.font15BlackMedium,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
