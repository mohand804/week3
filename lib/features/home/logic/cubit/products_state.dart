import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:week3/core/networking/api_error_model.dart';
import 'package:week3/features/home/data/model/products_response_model.dart';

part 'products_state.freezed.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = _Initial;
  const factory ProductsState.productsLoading() = ProductsLoading;
  const factory ProductsState.productsSuccess(ProductsResponseModel products) =
      ProductsSuccess;
  const factory ProductsState.productsFailure(ApiErrorModel apiErrorModel) =
      ProductsFailure;
}
