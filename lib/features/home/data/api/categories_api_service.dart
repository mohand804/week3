import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:week3/core/networking/api_constants.dart';
import 'package:week3/features/home/data/api/categories_api_contants.dart';
import 'package:week3/features/home/data/model/categories_response_model.dart';

part 'categories_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class CategoriesApiService {
  factory CategoriesApiService(
    Dio dio, {
    String baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _CategoriesApiService;
  @GET(CategoriesApiConstants.categories)
  Future<CategoriesResponseModel> getCategories();
}
