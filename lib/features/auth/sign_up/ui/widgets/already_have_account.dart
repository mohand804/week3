import 'package:flutter/material.dart';
import 'package:week3/core/theming/styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Already have an account? ',
              style: TextStyleManager.font15kGrayBlueDarkRegular,
            ),
            TextSpan(
              text: 'Login',
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
