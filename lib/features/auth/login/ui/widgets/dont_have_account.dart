import 'package:flutter/material.dart';
import 'package:week3/core/routing/routes.dart';
import 'package:week3/core/theming/styles.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.signUpScreen);
      },
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an account? ',
              style: TextStyleManager.font15kGrayBlueDarkRegular,
            ),
            TextSpan(
              text: 'Sign up',
              style: TextStyleManager.font15kGrayBlueDarkRegular.copyWith(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
