import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week3/core/helpers/spacing.dart';
import 'package:week3/core/theming/styles.dart';
import 'package:week3/features/auth/auth_headr.dart';
import 'package:week3/features/auth/login/ui/widgets/login_button.dart';
import 'package:week3/features/auth/login/ui/widgets/login_form.dart';
import 'package:week3/features/auth/remeber_me.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 16.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                AuthHeadr(
                  title: 'Welcome',
                  subtitle: 'Please enter your data to continue',
                ),
                verticalSpace(120),
                LoginForm(),
                verticalSpace(16),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyleManager.font15kGoogleRedMedium,
                  ),
                ),
                verticalSpace(16),
                RemeberMe(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: LoginButton(),
    );
  }
}
