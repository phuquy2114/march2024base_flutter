// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'near_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NearstBody _$NearstBodyFromJson(Map<String, dynamic> json) => NearstBody()
  ..lat = (json['lat'] as num?)?.toDouble()
  ..lng = (json['lng'] as num?)?.toDouble();

Map<String, dynamic> _$NearstBodyToJson(NearstBody instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
