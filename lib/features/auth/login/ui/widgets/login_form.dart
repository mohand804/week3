import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week3/core/helpers/spacing.dart';
import 'package:week3/core/theming/styles.dart';
import 'package:week3/core/widgets/custom_text_field.dart';
import 'package:week3/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:week3/features/auth/reactive_validation_text.dart';
import 'package:week3/features/auth/validators.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Email', style: TextStyleManager.font14GrayBlueDarkRegular),
          CustomTextField(
            hintText: 'Enter your email',
            controller: context.read<LoginCubit>().emailController,
            validator: (value) => Validators.emailValidator(value),
            suffixIcon: ReactiveValidationText(
              controller: context.read<LoginCubit>().emailController,
              validator: (value) => Validators.emailValidator(value),
              style: TextStyleManager.font12SuccessGreenRegular,
              showIcon: true,
            ),
          ),
          verticalSpace(16),
          Text('Password', style: TextStyleManager.font14GrayBlueDarkRegular),
          CustomTextField(
            hintText: 'Enter your password',
            controller: context.read<LoginCubit>().passwordController,
            validator: (value) {
              return value == null || value.isEmpty
                  ? 'Password is required'
                  : null;
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    context.read<LoginCubit>().emailController.dispose();
    context.read<LoginCubit>().passwordController.dispose();
    super.dispose();
  }
}
