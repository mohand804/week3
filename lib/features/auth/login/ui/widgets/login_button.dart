import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week3/core/widgets/custom_button.dart';
import 'package:week3/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:week3/features/auth/login/ui/widgets/login_bloc_consumer.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginBlocConsumer(
      child: (isLoading) => InkWell(
        onTap: () {
          context.read<LoginCubit>().loginFormValidation(context);
        },
        child: CustomButton(isLoading: isLoading, text: 'Login'),
      ),
    );
  }
}
