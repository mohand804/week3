import 'package:flutter/material.dart';
import 'package:week3/core/theming/colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.mediumPurple,
      body: Column(children: [Text('Onboarding')]),
    );
  }
}
