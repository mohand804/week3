import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:week3/core/networking/api_error_model.dart';
import 'package:week3/features/auth/login/data/model/login_response_model.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loginLoading() = LoginLoading;
  const factory LoginState.loginSuccess(LoginResponseModel response) =
      LoginSuccess;
  const factory LoginState.loginFailure(ApiErrorModel error) = LoginFailure;
}
