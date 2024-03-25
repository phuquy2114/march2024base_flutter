// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel()
  ..id = json['id'] as String?
  ..name = json['full_name'] as String?
  ..avatar = json['avatar'] as String?
  ..provider = json['provider'] as String?
  ..status = json['status'] as String?
  ..level = json['level'] as String?
  ..rank = (json['rank'] as num?)?.toDouble() ?? 5
  ..address = json['address'] as String?
  ..email = json['email'] as String?
  ..phone = json['phone_number'] as String?
  ..isDeleted = json['is_deleted'] as bool? ?? false
  ..createdAt = json['created_at'] as String?;

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'full_name': instance.name,
      'avatar': instance.avatar,
      'provider': instance.provider,
      'status': instance.status,
      'level': instance.level,
      'rank': instance.rank,
      'address': instance.address,
      'email': instance.email,
      'phone_number': instance.phone,
      'is_deleted': instance.isDeleted,
      'created_at': instance.createdAt,
    };
