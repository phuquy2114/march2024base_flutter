// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoleModel _$RoleModelFromJson(Map<String, dynamic> json) => RoleModel()
  ..id = json['id'] as String?
  ..userId = json['user_id'] as String?
  ..roleName = json['role_name'] as String?
  ..status = json['status'] as String?;

Map<String, dynamic> _$RoleModelToJson(RoleModel instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'role_name': instance.roleName,
      'status': instance.status,
    };
