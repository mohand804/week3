import 'package:flutter/material.dart';
import 'package:week3/core/theming/colors.dart';

class ReactiveValidationText extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?) validator;
  final String? validMessage;
  final TextStyle style;
  final bool showIcon;

  const ReactiveValidationText({
    super.key,
    required this.controller,
    required this.validator,
    this.validMessage,
    required this.style,
    this.showIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<TextEditingValue>(
      valueListenable: controller,
      builder: (context, value, child) {
        final isValid = validator(value.text) == null;
        return isValid
            ? showIcon
                  ? Icon(Icons.check, color: ColorsManager.successGreen)
                  : Text(validMessage ?? '', style: style)
            : const SizedBox.shrink();
      },
    );
  }
}
