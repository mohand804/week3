import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week3/core/routing/routes.dart';
import 'package:week3/core/widgets/custom_button.dart';
import 'package:week3/features/auth/sign_up/logic/cubit/signup_cubit.dart';
import 'package:week3/features/auth/sign_up/ui/widgets/sign_up_bloc_consumer.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SignupBlocConsumer(
      child: (isLoading) => InkWell(
        onTap: () {
          context.read<SignupCubit>().signupFormValidation(context);
          Navigator.pushNamed(
            context,
            Routes.validateOtpScreen,
            arguments: context.read<SignupCubit>().emailController.text,
          );
        },
        child: CustomButton(isLoading: isLoading, text: 'Sign Up'),
      ),
    );
  }
}
