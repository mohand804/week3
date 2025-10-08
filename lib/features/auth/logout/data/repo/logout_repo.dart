import 'package:week3/core/networking/api_error_handler.dart';
import 'package:week3/core/networking/api_result.dart';
import 'package:week3/features/auth/logout/data/api/logout_api_service.dart';

class LogoutRepo {
  final LogoutApiService _logoutApiService;
  LogoutRepo(this._logoutApiService);
  Future<ApiResult<void>> logout() async {
    try {
      await _logoutApiService.logout();
      return ApiResult.success(null);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
