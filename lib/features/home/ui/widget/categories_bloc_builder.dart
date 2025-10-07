import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week3/features/home/logic/cubit/categories_cubit.dart';
import 'package:week3/features/home/logic/cubit/categories_state.dart';
import 'package:week3/features/home/ui/widget/categories_list_veiw.dart';

class CategoriesBlocBuilder extends StatelessWidget {
  const CategoriesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        return state.maybeWhen(
          initial: () => const SizedBox.shrink(),
          categoriesLoading: () =>
              const Center(child: CircularProgressIndicator()),
          categoriesSuccess: (categories) =>
              CategoriesListVeiw(categories: categories.categories),
          categoriesFailure: (error) => Text(error.message),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
