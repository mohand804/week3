import 'package:flutter/material.dart';
import 'package:week3/core/theming/styles.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  const SectionHeader({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyleManager.font17kDarkGrayMedium),
        Text(subtitle, style: TextStyleManager.font15kGrayBlueDarkRegular),
      ],
    );
  }
}
