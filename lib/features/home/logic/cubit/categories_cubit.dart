import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week3/core/networking/api_result.dart';
import 'package:week3/features/home/data/repo/categories_repo.dart';
import 'package:week3/features/home/logic/cubit/categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  final CategoriesRepo _categoriesRepo;
  CategoriesCubit(this._categoriesRepo) : super(CategoriesState.initial());

  void getCategories() async {
    emit(CategoriesState.categoriesLoading());
    final result = await _categoriesRepo.getCategories();
    result.when(
      success: (categories) =>
          emit(CategoriesState.categoriesSuccess(categories)),
      failure: (error) => emit(CategoriesState.categoriesFailure(error)),
    );
  }
}
