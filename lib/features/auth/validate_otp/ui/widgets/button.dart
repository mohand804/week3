import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week3/core/widgets/custom_button.dart';
import 'package:week3/features/auth/validate_otp/data/logic/cubit/validate_otp_cubit.dart';
import 'package:week3/features/auth/validate_otp/data/model/validate_otp_requset_model.dart';
import 'package:week3/features/auth/validate_otp/ui/widgets/verify_bloc_consumer.dart';

class Button extends StatelessWidget {
  final String email;
  const Button({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return VerifyBlocConsumer(
      child: (isLoading) => InkWell(
        onTap: () {
          context.read<ValidateOtpCubit>().validateOtp(
            ValidateOtpRequestModel(
              otp: context
                  .read<ValidateOtpCubit>()
                  .otpControllers
                  .map((e) => e.text)
                  .join(),
              email: email,
            ),
          );
        },
        child: CustomButton(isLoading: isLoading, text: 'Verify'),
      ),
    );
  }
}
