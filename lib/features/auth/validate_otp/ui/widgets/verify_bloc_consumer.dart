import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week3/core/routing/routes.dart';
import 'package:week3/features/auth/validate_otp/logic/cubit/validate_otp_cubit.dart';
import 'package:week3/features/auth/validate_otp/logic/cubit/validate_otp_state.dart';

class VerifyBlocConsumer extends StatelessWidget {
  final Widget Function(bool isLoading) child;

  const VerifyBlocConsumer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ValidateOtpCubit, ValidateOtpState>(
      listenWhen: (previous, current) =>
          current is ValidateOtpFailure ||
          current is ValidateOtpSuccess ||
          current is ValidateOtpLoading,
      listener: (context, state) {
        state.whenOrNull(
          validateOtpSuccess: () {
            Navigator.pushReplacementNamed(context, Routes.loginScreen);
          },
          validateOtpFailure: (error) {
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
        return child(state is ValidateOtpLoading);
      },
    );
  }
}
