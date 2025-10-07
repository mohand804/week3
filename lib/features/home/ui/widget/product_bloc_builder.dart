import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week3/features/home/logic/cubit/products_cubit.dart';
import 'package:week3/features/home/logic/cubit/products_state.dart';
import 'package:week3/features/home/ui/widget/prodcuts_list_veiw.dart';

class ProductBlocBuilder extends StatelessWidget {
  const ProductBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        return state.maybeWhen(
          productsLoading: () =>
              const Center(child: CircularProgressIndicator()),
          productsFailure: (error) => Text(error.message),
          productsSuccess: (products) =>
              ProdcutsListVeiw(products: products.products),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
