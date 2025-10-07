import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:week3/core/networking/api_error_model.dart';
import 'package:week3/features/auth/sign_up/data/model/sign_up_response_model.dart';

part 'signup_state.freezed.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = SignupInitial;
  const factory SignupState.signupLoading() = SignupLoading;
  const factory SignupState.signupSuccess(SignUpResponseModel response) =
      SignupSuccess;
  const factory SignupState.signupFailure(ApiErrorModel error) = SignupFailure;
}
