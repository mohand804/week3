import 'package:week3/core/networking/api_error_handler.dart';
import 'package:week3/core/networking/api_result.dart';
import 'package:week3/features/auth/sign_up/data/api/signup_api_service.dart';
import 'package:week3/features/auth/sign_up/data/model/sign_up_response_model.dart';
import 'package:week3/features/auth/sign_up/data/model/signup_request_model.dart';

class SignupRepo {
  final SignupApiService _signupApiService;
  SignupRepo(this._signupApiService);
  Future<ApiResult<SignUpResponseModel>> signup(
    SignupRequestModel request,
  ) async {
    try {
      final response = await _signupApiService.signup(request);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
