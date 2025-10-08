import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:week3/core/helpers/constant.dart';
import 'package:week3/core/helpers/spacing.dart';
import 'package:week3/core/routing/routes.dart';
import 'package:week3/core/theming/styles.dart';
import 'package:week3/features/auth/login/logic/cubit/user_info_cubit.dart';
import 'package:week3/features/auth/login/logic/cubit/user_info_state.dart';
import 'package:week3/features/auth/logout/logic/cubit/logout_cubit.dart';
import 'package:week3/features/home/ui/widget/circle_container.dart';
import 'package:week3/features/home/ui/widget/profile_menu_list.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 80.h, horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: CircleContainer(
                  child: Padding(
                    padding: EdgeInsets.all(10.w),
                    child: SvgPicture.asset(
                      '${AppConstants.svgPath}Vector.svg',
                    ),
                  ),
                ),
              ),
              verticalSpace(20),
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CircleContainer(
                      image: DecorationImage(
                        image: AssetImage(
                          '${AppConstants.imagePath}omar_ahmed.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  horizontalSpace(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BlocBuilder<UserInfoCubit, UserInfoState>(
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
                      ),
                      Row(
                        children: [
                          Text(
                            'Verified Profile',
                            style: TextStyleManager.font13kGrayBlueDarkRegular,
                          ),
                          SvgPicture.asset('${AppConstants.svgPath}Badge.svg'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              verticalSpace(30),
              const ProfileMenuList(),
              verticalSpace(20),
              Divider(color: Colors.grey.shade300),
              verticalSpace(10),
              InkWell(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
