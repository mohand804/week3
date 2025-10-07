import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week3/core/helpers/spacing.dart';
import 'package:week3/features/auth/sign_up/ui/widgets/remeber_me.dart';
import 'package:week3/features/auth/sign_up/ui/widgets/sign_up_form.dart';
import 'package:week3/features/auth/sign_up/ui/widgets/signup_button.dart';
import 'package:week3/features/auth/sign_up/ui/widgets/signup_headr.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 16.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SignupHeadr(),
                verticalSpace(120),
                SignUpForm(),
                RemeberMe(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SignupButton(),
    );
  }
}
