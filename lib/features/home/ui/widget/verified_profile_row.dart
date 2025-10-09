import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:week3/core/helpers/constant.dart';
import 'package:week3/core/theming/styles.dart';
import 'package:week3/features/home/ui/widget/user_info_bloc_builder.dart';

class VerifiedProfileRow extends StatelessWidget {
  const VerifiedProfileRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UserInfoBlocBuilder(),
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
    );
  }
}
