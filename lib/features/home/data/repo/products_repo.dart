import 'package:week3/core/networking/api_error_handler.dart';
import 'package:week3/core/networking/api_result.dart';
import 'package:week3/features/home/data/api/products_api_service.dart';
import 'package:week3/features/home/data/model/products_requset_model.dart';
import 'package:week3/features/home/data/model/products_response_model.dart';

class ProductsRepo {
  final ProductsApiService _productsApiService;
  ProductsRepo(this._productsApiService);
  Future<ApiResult<ProductsResponseModel>> getProducts(
    ProductsRequsetModel request,
  ) async {
    try {
      final response = await _productsApiService.getProducts(request);
      return ApiResult.success(response);
    } catch (e, stackTrace) {
      // ignore: avoid_print
      print('❌ Error while parsing ProductsResponseModel: $e');
      // ignore: avoid_print
      print('📌 Stack trace: $stackTrace');
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
