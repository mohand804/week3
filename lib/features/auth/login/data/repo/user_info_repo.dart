import 'package:week3/core/networking/api_error_handler.dart';
import 'package:week3/core/networking/api_result.dart';
import 'package:week3/features/auth/login/data/api/user_info_api_service.dart';
import 'package:week3/features/auth/login/data/model/user_info._response_model.dart';

class UserInfoRepo {
  final UserInfoApiService _userInfoApiService;
  UserInfoRepo(this._userInfoApiService);
  Future<ApiResult<UserInfoResponseModel>> userInfo() async {
    try {
      final response = await _userInfoApiService.userInfo();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
