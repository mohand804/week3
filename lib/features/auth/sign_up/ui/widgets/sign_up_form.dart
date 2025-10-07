import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week3/core/helpers/spacing.dart';
import 'package:week3/core/theming/colors.dart';
import 'package:week3/core/theming/styles.dart';
import 'package:week3/core/widgets/custom_text_field.dart';
import 'package:week3/features/auth/sign_up/logic/cubit/signup_cubit.dart';
import 'package:week3/features/auth/validators.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Username', style: TextStyleManager.font14GrayBlueDarkRegular),
          CustomTextField(
            hintText: 'Enter your username',
            controller: context.read<SignupCubit>().fullNameController,
            validator: (value) => Validators.usernameValidator(value),
            suffixIcon: ValueListenableBuilder(
              valueListenable: context.read<SignupCubit>().fullNameController,
              builder: (context, value, child) {
                final isValid =
                    Validators.usernameValidator(value.text) == null;
                return isValid
                    ? Icon(Icons.check, color: ColorsManager.successGreen)
                    : SizedBox.shrink();
              },
            ),
          ),
          verticalSpace(16),
          Text('Password', style: TextStyleManager.font14GrayBlueDarkRegular),
          CustomTextField(
            hintText: 'Enter your password',
            controller: context.read<SignupCubit>().passwordController,
            validator: (value) => Validators.passwordValidator(value),
            suffixIcon: ValueListenableBuilder(
              valueListenable: context.read<SignupCubit>().passwordController,
              builder: (context, value, child) {
                final isValid =
                    Validators.passwordValidator(value.text) == null;
                return isValid
                    ? Text(
                        'Strong',
                        style: TextStyleManager.font12SuccessGreenRegular,
                      )
                    : SizedBox.shrink();
              },
            ),
          ),
          verticalSpace(16),
          Text(
            'Email Address',
            style: TextStyleManager.font14GrayBlueDarkRegular,
          ),
          CustomTextField(
            hintText: 'Enter your confirm password',
            controller: context.read<SignupCubit>().emailController,
            validator: (value) => Validators.emailValidator(value),
            suffixIcon: ValueListenableBuilder(
              valueListenable: context.read<SignupCubit>().emailController,
              builder: (context, value, child) {
                final isValid = Validators.emailValidator(value.text) == null;
                return isValid
                    ? Icon(Icons.check, color: ColorsManager.successGreen)
                    : SizedBox.shrink();
              },
            ),
          ),
          verticalSpace(16),
        ],
      ),
    );
  }

  @override
  void dispose() {
    context.read<SignupCubit>().fullNameController.dispose();
    context.read<SignupCubit>().passwordController.dispose();
    context.read<SignupCubit>().emailController.dispose();
    super.dispose();
  }
}
