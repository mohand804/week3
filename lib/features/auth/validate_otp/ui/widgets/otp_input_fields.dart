import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week3/core/theming/colors.dart';
import 'package:week3/features/auth/validate_otp/data/logic/cubit/validate_otp_cubit.dart';

class OtpInputFields extends StatefulWidget {
  const OtpInputFields({super.key});

  @override
  State<OtpInputFields> createState() => OtpInputFieldsState();
}

class OtpInputFieldsState extends State<OtpInputFields> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        6,
        (index) => Container(
          width: 50.w,
          height: 60.h,
          decoration: BoxDecoration(
            color: ColorsManager.lightBlueGray,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: TextField(
            controller: context.read<ValidateOtpCubit>().otpControllers[index],
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLength: 1,
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
            decoration: const InputDecoration(
              counterText: '',
              border: InputBorder.none,
            ),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onChanged: (value) {
              if (value.isNotEmpty && index < 5) {
                FocusScope.of(context).nextFocus();
              }
            },
          ),
        ),
      ),
    );
  }
}
