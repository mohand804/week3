import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week3/features/home/data/model/products_response_model.dart';
import 'package:week3/features/home/ui/widget/prodcuts_list_veiw_item.dart';

class ProdcutsListVeiw extends StatelessWidget {
  final List<Product> products;
  const ProdcutsListVeiw({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.6,
        mainAxisSpacing: 10.h,
        crossAxisSpacing: 10.w,
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: products.length,
      itemBuilder: (context, index) =>
          ProdcutsListVeiwItem(product: products[index]),
    );
  }
}
