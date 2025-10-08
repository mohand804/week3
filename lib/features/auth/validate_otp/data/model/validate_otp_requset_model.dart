import 'package:json_annotation/json_annotation.dart';

part 'validate_otp_requset_model.g.dart';

@JsonSerializable()
class ValidateOtpRequestModel {
  final String email;
  final String otp;

  ValidateOtpRequestModel({required this.otp, required this.email});

  Map<String, dynamic> toJson() => _$ValidateOtpRequestModelToJson(this);
}
