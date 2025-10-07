import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week3/core/networking/api_result.dart';
import 'package:week3/features/auth/login/data/model/login_requset_model.dart';
import 'package:week3/features/auth/login/data/repo/login_repo.dart';
import 'package:week3/features/auth/login/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login(LoginRequestModel request) async {
    emit(LoginState.loginLoading());
    final result = await _loginRepo.login(request);
    result.when(
      success: (response) => emit(LoginState.loginSuccess(response)),
      failure: (error) => emit(LoginState.loginFailure(error)),
    );
  }

  void loginFormValidation(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      login(
        LoginRequestModel(
          email: emailController.text,
          password: passwordController.text,
        ),
      );
    }
  }
}
