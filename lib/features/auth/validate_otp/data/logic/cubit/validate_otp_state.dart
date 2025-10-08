import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:week3/core/networking/api_error_model.dart';

part 'validate_otp_state.freezed.dart';

@freezed
class ValidateOtpState with _$ValidateOtpState {
  const factory ValidateOtpState.initial() = _Initial;
  const factory ValidateOtpState.validateOtpLoading() = ValidateOtpLoading;
  const factory ValidateOtpState.validateOtpSuccess() = ValidateOtpSuccess;
  const factory ValidateOtpState.validateOtpFailure(ApiErrorModel error) =
      ValidateOtpFailure;
}
