// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_password_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewPasswordBody _$NewPasswordBodyFromJson(Map<String, dynamic> json) =>
    NewPasswordBody()
      ..email = json['email'] as String?
      ..code = json['code'] as String?
      ..new_password = json['new_password'] as String?
      ..confirm_password = json['confirm_password'] as String?;

Map<String, dynamic> _$NewPasswordBodyToJson(NewPasswordBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'code': instance.code,
      'new_password': instance.new_password,
      'confirm_password': instance.confirm_password,
    };
