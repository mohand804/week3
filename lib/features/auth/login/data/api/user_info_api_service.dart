import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:week3/core/networking/api_constants.dart';
import 'package:week3/features/auth/login/data/api/user_info_api_constants.dart';
import 'package:week3/features/auth/login/data/model/user_info._response_model.dart';

part 'user_info_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class UserInfoApiService {
  factory UserInfoApiService(
    Dio dio, {
    String baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _UserInfoApiService;
  @GET(UserInfoApiConstants.userInfo)
  Future<UserInfoResponseModel> userInfo();
}
