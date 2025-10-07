import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:week3/core/networking/api_constants.dart';
import 'package:week3/features/home/data/api/products_api_constants.dart';
import 'package:week3/features/home/data/model/products_requset_model.dart';
import 'package:week3/features/home/data/model/products_response_model.dart';

part 'products_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ProductsApiService {
  factory ProductsApiService(
    Dio dio, {
    String baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _ProductsApiService;
  @GET(ProductsApiConstants.products)
  Future<ProductsResponseModel> getProducts(
    @Body() ProductsRequsetModel request,
  );
}
