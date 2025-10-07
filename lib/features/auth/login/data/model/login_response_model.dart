import 'package:json_annotation/json_annotation.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  final String token;
  final String refreshToken;
  final String expiresAtUtc;
  LoginResponseModel({
    required this.token,
    required this.refreshToken,
    required this.expiresAtUtc,
  });
  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}
