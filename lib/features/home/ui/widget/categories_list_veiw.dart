import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week3/features/home/data/model/categories_response_model.dart';
import 'package:week3/features/home/ui/widget/categories_list_veiw_item.dart';

class CategoriesListVeiw extends StatelessWidget {
  final List<Category> categories;
  const CategoriesListVeiw({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) =>
            CategoriesListVeiwItem(category: categories[index]),
      ),
    );
  }
}
