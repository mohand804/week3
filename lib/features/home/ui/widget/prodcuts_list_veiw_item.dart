import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week3/core/helpers/spacing.dart';
import 'package:week3/core/theming/font_weight_helper.dart';
import 'package:week3/core/theming/styles.dart';
import 'package:week3/features/home/data/model/products_response_model.dart';

class ProdcutsListVeiwItem extends StatelessWidget {
  final Product product;
  const ProdcutsListVeiwItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 160.w,
          height: 203.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            image: DecorationImage(
              image: NetworkImage(product.coverPictureUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        verticalSpace(10),
        Text(
          product.name,
          style: TextStyleManager.font11kDarkGrayMedium,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        verticalSpace(10),
        Text(
          product.price.toString(),
          style: TextStyleManager.font15BlackMedium.copyWith(
            fontWeight: FontWeightHelper.bold,
          ),
        ),
      ],
    );
  }
}
