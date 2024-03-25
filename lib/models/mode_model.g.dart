// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModeModel _$ModeModelFromJson(Map<String, dynamic> json) => ModeModel()
  ..id = json['id'] as String?
  ..typeId = json['type_id'] as String?
  ..name = json['name'] as String?
  ..brand = json['brand'] as String?
  ..isDeleted = json['is_deleted'] as bool?
  ..type = json['type'] == null
      ? null
      : TypeModel.fromJson(json['type'] as Map<String, dynamic>);

Map<String, dynamic> _$ModeModelToJson(ModeModel instance) => <String, dynamic>{
      'id': instance.id,
      'type_id': instance.typeId,
      'name': instance.name,
      'brand': instance.brand,
      'is_deleted': instance.isDeleted,
      'type': instance.type,
    };
