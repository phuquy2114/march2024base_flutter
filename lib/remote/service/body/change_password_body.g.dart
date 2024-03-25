// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangePasswordBody _$ChangePasswordBodyFromJson(Map<String, dynamic> json) =>
    ChangePasswordBody()
      ..password = json['oldPassword'] as String?
      ..newPassword = json['newPassword'] as String?;

Map<String, dynamic> _$ChangePasswordBodyToJson(ChangePasswordBody instance) =>
    <String, dynamic>{
      'oldPassword': instance.password,
      'newPassword': instance.newPassword,
    };
