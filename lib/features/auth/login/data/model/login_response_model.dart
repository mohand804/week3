import 'package:json_annotation/json_annotation.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  final String accessToken;
  final String expiresAtUtc;
  final String refreshToken;
  LoginResponseModel({
    required this.accessToken,
    required this.refreshToken,
    required this.expiresAtUtc,
  });
  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}
