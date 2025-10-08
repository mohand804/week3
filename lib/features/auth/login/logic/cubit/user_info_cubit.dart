import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week3/core/networking/api_result.dart';
import 'package:week3/features/auth/login/data/repo/user_info_repo.dart';
import 'package:week3/features/auth/login/logic/cubit/user_info_state.dart';

class UserInfoCubit extends Cubit<UserInfoState> {
  final UserInfoRepo _userInfoRepo;
  UserInfoCubit(this._userInfoRepo) : super(const UserInfoState.initial());

  Future<void> getUserInfo() async {
    emit(const UserInfoState.userInfoLoading());
    final result = await _userInfoRepo.userInfo();
    result.when(
      success: (userInfo) {
        emit(UserInfoState.userInfoSuccess(userInfo));
      },
      failure: (error) {
        emit(UserInfoState.userInfoFailure(error));
      },
    );
  }
}
