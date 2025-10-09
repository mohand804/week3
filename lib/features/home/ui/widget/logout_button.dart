import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week3/core/helpers/spacing.dart';
import 'package:week3/core/routing/routes.dart';
import 'package:week3/core/theming/styles.dart';
import 'package:week3/features/auth/logout/logic/cubit/logout_cubit.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await context.read<LogoutCubit>().logout();
        if (!context.mounted) return;
        await Navigator.pushNamedAndRemoveUntil(
          context,
          Routes.loginScreen,
          (route) => false,
        );
      },
      child: Row(
        children: [
          Icon(Icons.logout_outlined, color: Colors.red),
          horizontalSpace(10),
          Text(
            'Logout',
            style: TextStyleManager.font15BlackMedium.copyWith(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
