import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week3/core/helpers/spacing.dart';
import 'package:week3/features/auth/auth_headr.dart';
import 'package:week3/features/auth/validate_otp/ui/widgets/verify_otp_button.dart';
import 'package:week3/features/auth/validate_otp/ui/widgets/otp_input_fields.dart';
import 'package:week3/features/auth/validate_otp/ui/widgets/verify_bloc_consumer.dart';

class ValidateOtpScreen extends StatelessWidget {
  final String email;
  const ValidateOtpScreen({super.key, required this.email});

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
                  title: 'Verification Code',
                  subtitle: 'We have sent the code verification to\n$email',
                ),
                verticalSpace(80),
                const OtpInputFields(),
                verticalSpace(40),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: VerifyBlocConsumer(
        child: (isLoading) => Button(email: email),
      ),
    );
  }
}
