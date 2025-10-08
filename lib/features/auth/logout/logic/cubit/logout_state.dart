import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:week3/core/networking/api_error_model.dart';

part 'logout_state.freezed.dart';

@freezed
class LogoutState with _$LogoutState {
  const factory LogoutState.initial() = _Initial;
  const factory LogoutState.logoutLoading() = LogoutLoading;
  const factory LogoutState.logoutSuccess() = LogoutSuccess;
  const factory LogoutState.logoutFailure(ApiErrorModel error) = LogoutFailure;
}
