import 'package:week3/core/networking/api_error_handler.dart';
import 'package:week3/core/networking/api_error_model.dart';
import 'package:week3/core/networking/api_result.dart';
import 'package:week3/features/auth/login/data/api/login_api_service.dart';
import 'package:week3/features/auth/login/data/model/login_requset_model.dart';
import 'package:week3/features/auth/login/data/model/login_response_model.dart';

class LoginRepo {
  final LoginApiService _loginApiService;
  LoginRepo(this._loginApiService);
  Future<ApiResult<LoginResponseModel>> login(LoginRequestModel request) async {
    try {
      final response = await _loginApiService.login(request);
      return ApiResult.success(response);
    } catch (e) {
      final errorModel = ApiErrorHandler.handle(e);
      return ApiResult.failure(
        ApiErrorModel(
          message: 'invalidCredentials',
          statusCode: errorModel.statusCode,
        ),
      );
    }
  }
}
