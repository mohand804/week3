import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:week3/core/networking/api_error_model.dart';
import 'package:week3/features/auth/login/data/model/user_info._response_model.dart';

part 'user_info_state.freezed.dart';

@freezed
class UserInfoState with _$UserInfoState {
  const factory UserInfoState.initial() = _Initial;
  const factory UserInfoState.userInfoLoading() = UserInfoLoading;
  const factory UserInfoState.userInfoSuccess(UserInfoResponseModel userInfo) =
      UserInfoSuccess;
  const factory UserInfoState.userInfoFailure(ApiErrorModel error) =
      UserInfoFailure;
}
