import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:week3/core/networking/api_error_model.dart';
import 'package:week3/features/home/data/model/categories_response_model.dart';

part 'categories_state.freezed.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial() = _Initial;
  const factory CategoriesState.categoriesLoading() = _CategoriesLoading;
  const factory CategoriesState.categoriesSuccess(
    CategoriesResponseModel categories,
  ) = _CategoriesSuccess;
  const factory CategoriesState.categoriesFailure(ApiErrorModel error) =
      _CategoriesFailure;
}
