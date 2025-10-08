// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info._response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfoResponseModel _$UserInfoResponseModelFromJson(
  Map<String, dynamic> json,
) => UserInfoResponseModel(
  userId: json['userId'] as String,
  email: json['email'] as String,
  fullName: json['fullName'] as String,
  profilePicture: json['profilePicture'] as String?,
);

Map<String, dynamic> _$UserInfoResponseModelToJson(
  UserInfoResponseModel instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'email': instance.email,
  'fullName': instance.fullName,
  'profilePicture': instance.profilePicture,
};
