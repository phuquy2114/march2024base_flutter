// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupBody _$SignupBodyFromJson(Map<String, dynamic> json) => SignupBody()
  ..email = json['email'] as String?
  ..fullName = json['full_name'] as String?
  ..avatar = json['avatar'] as String?
  ..password = json['password'] as String?
  ..phone = json['phone_number'] as int?;

Map<String, dynamic> _$SignupBodyToJson(SignupBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'full_name': instance.fullName,
      'avatar': instance.avatar,
      'password': instance.password,
      'phone_number': instance.phone,
    };
