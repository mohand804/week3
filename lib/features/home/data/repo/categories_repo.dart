import 'package:week3/core/networking/api_error_handler.dart';
import 'package:week3/core/networking/api_result.dart';
import 'package:week3/features/home/data/api/categories_api_service.dart';
import 'package:week3/features/home/data/model/categories_response_model.dart';

class CategoriesRepo {
  final CategoriesApiService _categoriesApiService;
  CategoriesRepo(this._categoriesApiService);
  Future<ApiResult<CategoriesResponseModel>> getCategories() async {
    try {
      final response = await _categoriesApiService.getCategories();
      return ApiResult.success(response);
    } catch (e, stackTrace) {
      // ignore: avoid_print
      print('❌ Error while parsing UserAdsResponseModel: $e');
      // ignore: avoid_print
      print('📌 Stack trace: $stackTrace');
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
