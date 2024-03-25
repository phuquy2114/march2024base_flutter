// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wash_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WashBody _$WashBodyFromJson(Map<String, dynamic> json) => WashBody()
  ..address = json['address'] as String?
  ..type = json['type'] as String?
  ..note = json['note'] as String?
  ..carId = json['car_id'] as String?
  ..appointmentTime = json['appointment_time'] as String?
  ..lat = (json['lat'] as num?)?.toDouble()
  ..lng = (json['lng'] as num?)?.toDouble();

Map<String, dynamic> _$WashBodyToJson(WashBody instance) => <String, dynamic>{
      'address': instance.address,
      'type': instance.type,
      'note': instance.note,
      'car_id': instance.carId,
      'appointment_time': instance.appointmentTime,
      'lat': instance.lat,
      'lng': instance.lng,
    };
