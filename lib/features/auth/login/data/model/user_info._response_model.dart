import 'package:json_annotation/json_annotation.dart';

part 'user_info._response_model.g.dart';

@JsonSerializable()
class UserInfoResponseModel {
  final String userId;
  final String email;
  final String fullName;
  final String? profilePicture;

  UserInfoResponseModel({
    required this.userId,
    required this.email,
    required this.fullName,
    required this.profilePicture,
  });

  factory UserInfoResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserInfoResponseModelFromJson(json);
}
