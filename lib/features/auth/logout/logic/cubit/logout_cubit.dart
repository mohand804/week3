import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week3/core/networking/api_result.dart';
import 'package:week3/features/auth/logout/data/repo/logout_repo.dart';
import 'package:week3/features/auth/logout/logic/cubit/logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  final LogoutRepo _logoutRepo;
  LogoutCubit(this._logoutRepo) : super(const LogoutState.initial());

  Future<void> logout() async {
    emit(const LogoutState.logoutLoading());
    final result = await _logoutRepo.logout();
    result.when(
      success: (response) => emit(const LogoutState.logoutSuccess()),
      failure: (error) => emit(LogoutState.logoutFailure(error)),
    );
  }
}
