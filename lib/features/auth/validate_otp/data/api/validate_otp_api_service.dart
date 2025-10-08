import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:week3/core/networking/api_constants.dart';
import 'package:week3/features/auth/validate_otp/data/api/validate_otp_api_constants.dart';
import 'package:week3/features/auth/validate_otp/data/model/validate_otp_requset_model.dart';

part 'validate_otp_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ValidateOtpApiService {
  factory ValidateOtpApiService(
    Dio dio, {
    String baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _ValidateOtpApiService;
  @POST(ValidateOtpApiConstants.validateOtp)
  Future<void> validateOtp(@Body() ValidateOtpRequestModel request);
}
