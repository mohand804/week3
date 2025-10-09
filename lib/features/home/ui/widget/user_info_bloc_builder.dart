import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week3/core/theming/styles.dart';
import 'package:week3/features/auth/login/logic/cubit/user_info_cubit.dart';
import 'package:week3/features/auth/login/logic/cubit/user_info_state.dart';

class UserInfoBlocBuilder extends StatelessWidget {
  const UserInfoBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserInfoCubit, UserInfoState>(
      builder: (context, state) {
        return state.maybeWhen(
          userInfoLoading: () => const SizedBox.shrink(),
          userInfoSuccess: (userInfo) => Text(
            userInfo.fullName,
            style: TextStyleManager.font17kDarkGrayMedium,
          ),
          userInfoFailure: (error) => Text(error.message),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
