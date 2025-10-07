import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week3/core/theming/colors.dart';
import 'package:week3/core/theming/styles.dart';
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
        },
        child: Container(
          padding: EdgeInsets.only(bottom: 20.h),
          height: 75.h,
          decoration: BoxDecoration(color: ColorsManager.mainColor),
          child: isLoading
              ? const Center(
                  child: CircularProgressIndicator(color: Colors.white),
                )
              : Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyleManager.font17WhiteMedium,
                  ),
                ),
        ),
      ),
    );
  }
}
