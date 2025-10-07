import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week3/core/helpers/shared_pref_helpr.dart';
import 'package:week3/core/routing/routes.dart';
import 'package:week3/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:week3/features/auth/login/logic/cubit/login_state.dart';

class LoginBlocConsumer extends StatelessWidget {
  final Widget Function(bool isLoading) child;

  const LoginBlocConsumer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is LoginFailure ||
          current is LoginSuccess ||
          current is LoginLoading,
      listener: (context, state) {
        state.whenOrNull(
          loginSuccess: (login) {
            Navigator.pushNamed(context, Routes.homeScreen);
            SharedPrefHelper.setString('token', login.accessToken);
          },
          loginFailure: (error) {
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
        return child(state is LoginLoading);
      },
    );
  }
}
