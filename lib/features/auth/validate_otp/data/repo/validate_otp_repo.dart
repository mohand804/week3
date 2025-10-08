import 'package:week3/core/networking/api_error_handler.dart';
import 'package:week3/core/networking/api_result.dart';
import 'package:week3/features/auth/validate_otp/data/api/validate_otp_api_service.dart';
import 'package:week3/features/auth/validate_otp/data/model/validate_otp_requset_model.dart';

class ValidateOtpRepo {
  final ValidateOtpApiService _validateOtpApiService;
  ValidateOtpRepo(this._validateOtpApiService);
  Future<ApiResult<void>> validateOtp(ValidateOtpRequestModel request) async {
    try {
      await _validateOtpApiService.validateOtp(request);
      return ApiResult.success(null);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
