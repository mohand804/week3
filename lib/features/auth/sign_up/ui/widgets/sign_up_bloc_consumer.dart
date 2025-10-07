import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week3/features/auth/sign_up/logic/cubit/signup_cubit.dart';
import 'package:week3/features/auth/sign_up/logic/cubit/signup_state.dart';

class SignupBlocConsumer extends StatelessWidget {
  final Widget Function(bool isLoading) child;

  const SignupBlocConsumer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is SignupFailure ||
          current is SignupSuccess ||
          current is SignupLoading,
      listener: (context, state) {
        state.whenOrNull(
          signupSuccess: (signup) {
            // Navigator.pushNamed(context, Routes.checkEmailScreen);
          },
          signupFailure: (error) {
            Flushbar(
              message: error.message,
              duration: const Duration(seconds: 6),
              margin: const EdgeInsets.all(8),
              borderRadius: BorderRadius.circular(8),
              flushbarPosition: FlushbarPosition.TOP,
              backgroundColor: Colors.red,
            ).show(context);
          },
        );
      },
      builder: (context, state) {
        return child(state is SignupLoading);
      },
    );
  }
}
