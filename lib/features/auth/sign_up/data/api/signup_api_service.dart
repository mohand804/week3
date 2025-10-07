import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:week3/core/networking/api_constants.dart';
import 'package:week3/features/auth/sign_up/data/api/signup_api_constants.dart';
import 'package:week3/features/auth/sign_up/data/model/sign_up_response_model.dart';
import 'package:week3/features/auth/sign_up/data/model/signup_request_model.dart';

part 'signup_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class SignupApiService {
  factory SignupApiService(
    Dio dio, {
    String baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _SignupApiService;

  @POST(SignupApiConstants.signup)
  Future<SignUpResponseModel> signup(@Body() SignupRequestModel request);
}
