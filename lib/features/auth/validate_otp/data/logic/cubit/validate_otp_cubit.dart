import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week3/core/networking/api_result.dart';
import 'package:week3/features/auth/validate_otp/data/logic/cubit/validate_otp_state.dart';
import 'package:week3/features/auth/validate_otp/data/model/validate_otp_requset_model.dart';
import 'package:week3/features/auth/validate_otp/data/repo/validate_otp_repo.dart';

class ValidateOtpCubit extends Cubit<ValidateOtpState> {
  final ValidateOtpRepo _validateOtpRepo;
  ValidateOtpCubit(this._validateOtpRepo) : super(ValidateOtpState.initial());
  final List<TextEditingController> otpControllers = List.generate(
    6,
    (_) => TextEditingController(),
  );
  void validateOtp(ValidateOtpRequestModel request) async {
    emit(ValidateOtpState.validateOtpLoading());
    final result = await _validateOtpRepo.validateOtp(request);
    result.when(
      success: (response) => emit(ValidateOtpState.validateOtpSuccess()),
      failure: (error) => emit(ValidateOtpState.validateOtpFailure(error)),
    );
  }

  @override
  Future<void> close() {
    for (var controller in otpControllers) {
      controller.dispose();
    }
    return super.close();
  }
}
