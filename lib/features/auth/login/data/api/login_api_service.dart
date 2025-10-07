import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:week3/core/networking/api_constants.dart';
import 'package:week3/features/auth/login/data/api/login_api_contants.dart';
import 'package:week3/features/auth/login/data/model/login_requset_model.dart';
import 'package:week3/features/auth/login/data/model/login_response_model.dart';

part 'login_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class LoginApiService {
  factory LoginApiService(
    Dio dio, {
    String baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _LoginApiService;
  @POST(LoginApiConstants.login)
  Future<LoginResponseModel> login(@Body() LoginRequestModel request);
}
