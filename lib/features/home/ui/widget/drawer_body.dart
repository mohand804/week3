import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:week3/core/helpers/constant.dart';
import 'package:week3/core/helpers/spacing.dart';
import 'package:week3/features/home/ui/widget/circle_container.dart';
import 'package:week3/features/home/ui/widget/logout_button.dart';
import 'package:week3/features/home/ui/widget/profile_menu_list.dart';
import 'package:week3/features/home/ui/widget/verified_profile_row.dart';

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
                  const VerifiedProfileRow(),
                ],
              ),
              verticalSpace(30),
              const ProfileMenuList(),
              verticalSpace(20),
              Divider(color: Colors.grey.shade300),
              verticalSpace(10),
              const LogoutButton(),
            ],
          ),
        ),
      ),
    );
  }
}
