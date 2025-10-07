import 'package:json_annotation/json_annotation.dart';

part 'signup_request_model.g.dart';

@JsonSerializable()
class SignupRequestModel {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  SignupRequestModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$SignupRequestModelToJson(this);
}
