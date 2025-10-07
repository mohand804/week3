import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week3/core/networking/api_result.dart';
import 'package:week3/features/home/data/model/products_requset_model.dart';
import 'package:week3/features/home/data/repo/products_repo.dart';
import 'package:week3/features/home/logic/cubit/products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final ProductsRepo _productsRepo;
  ProductsCubit(this._productsRepo) : super(ProductsState.initial());

  void getProducts(ProductsRequsetModel request) async {
    emit(ProductsState.productsLoading());
    final result = await _productsRepo.getProducts(request);
    result.when(
      success: (products) => emit(ProductsState.productsSuccess(products)),
      failure: (error) => emit(ProductsState.productsFailure(error)),
    );
  }
}
