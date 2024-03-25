// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarResponse _$CarResponseFromJson(Map<String, dynamic> json) => CarResponse()
  ..id = json['id'] as String?
  ..licenseNumber = json['license_number'] as String?
  ..modelId = json['model_id'] as String?
  ..isDeleted = json['is_deleted'] as bool?;

Map<String, dynamic> _$CarResponseToJson(CarResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'license_number': instance.licenseNumber,
      'model_id': instance.modelId,
      'is_deleted': instance.isDeleted,
    };
