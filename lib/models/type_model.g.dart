// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TypeModel _$TypeModelFromJson(Map<String, dynamic> json) => TypeModel()
  ..id = json['id'] as String?
  ..isDeleted = json['is_deleted'] as bool?
  ..name = json['name'] as String?
  ..price = json['price'] as int? ?? 0;

Map<String, dynamic> _$TypeModelToJson(TypeModel instance) => <String, dynamic>{
      'id': instance.id,
      'is_deleted': instance.isDeleted,
      'name': instance.name,
      'price': instance.price,
    };
