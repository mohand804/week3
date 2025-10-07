import 'package:flutter/material.dart';
import 'package:week3/core/theming/colors.dart';
import 'package:week3/core/theming/styles.dart';

class RemeberMe extends StatefulWidget {
  const RemeberMe({super.key});

  @override
  State<RemeberMe> createState() => _RemeberMeState();
}

class _RemeberMeState extends State<RemeberMe> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Remember me', style: TextStyleManager.font13DarkGrayMedium),
        Transform.scale(
          scale: 0.7,
          child: Switch(
            activeTrackColor: ColorsManager.successGreen,
            value: value,
            onChanged: (value) {
              setState(() {
                this.value = !this.value;
              });
            },
          ),
        ),
      ],
    );
  }
}
