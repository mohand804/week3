import 'package:flutter/material.dart';
import 'package:week3/core/theming/styles.dart';

class UserGreeting extends StatelessWidget {
  const UserGreeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hello', style: TextStyleManager.font28GrayBlueDarkSemiBold),
          Text(
            'Welcome to Laza.',
            style: TextStyleManager.font15GrayBlueDarkRegular,
          ),
        ],
      ),
    );
  }
}
