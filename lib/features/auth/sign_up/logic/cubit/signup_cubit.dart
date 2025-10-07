import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week3/core/networking/api_result.dart';
import 'package:week3/features/auth/sign_up/data/model/signup_request_model.dart';
import 'package:week3/features/auth/sign_up/data/repo/signup_repo.dart';
import 'package:week3/features/auth/sign_up/logic/cubit/signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(SignupState.initial());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();

  Future<void> signup(SignupRequestModel request) async {
    emit(SignupState.signupLoading());
    final result = await _signupRepo.signup(request);
    result.when(
      success: (data) => emit(SignupState.signupSuccess(data)),
      failure: (apiErrorModel) =>
          emit(SignupState.signupFailure(apiErrorModel)),
    );
  }

  void signupFormValidation(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      signup(
        SignupRequestModel(
          email: emailController.text,
          password: passwordController.text,
          firstName: fullNameController.text,
          lastName: fullNameController.text,
        ),
      );
    }
  }
}
