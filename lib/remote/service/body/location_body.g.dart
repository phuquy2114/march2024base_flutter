// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationBody _$LocationBodyFromJson(Map<String, dynamic> json) => LocationBody()
  ..lat = (json['lat'] as num?)?.toDouble()
  ..lng = (json['lng'] as num?)?.toDouble();

Map<String, dynamic> _$LocationBodyToJson(LocationBody instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
