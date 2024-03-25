// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarModel _$CarModelFromJson(Map<String, dynamic> json) => CarModel()
  ..id = json['id'] as String?
  ..userId = json['user_id'] as String?
  ..roleName = json['role_name'] as String?
  ..status = json['status'] as String?
  ..licenseNumber = json['license_number'] as String?
  ..modelId = json['model_id'] as String?
  ..model = json['model'] == null
      ? null
      : ModeModel.fromJson(json['model'] as Map<String, dynamic>);

Map<String, dynamic> _$CarModelToJson(CarModel instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'role_name': instance.roleName,
      'status': instance.status,
      'license_number': instance.licenseNumber,
      'model_id': instance.modelId,
      'model': instance.model,
    };
