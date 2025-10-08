import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:week3/core/networking/api_constants.dart';
import 'package:week3/features/auth/logout/data/api/logout_api_constants.dart';

part 'logout_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class LogoutApiService {
  factory LogoutApiService(
    Dio dio, {
    String baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _LogoutApiService;
  @POST(LogoutApiConstants.logout)
  Future<void> logout();
}
