// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wash_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WashResponse _$WashResponseFromJson(Map<String, dynamic> json) => WashResponse()
  ..id = json['id'] as String?
  ..address = json['address'] as String?
  ..type = json['type'] as String?
  ..note = json['note'] as String?
  ..carId = json['car_id'] as String?
  ..lat = (json['lat'] as num?)?.toDouble()
  ..lng = (json['lng'] as num?)?.toDouble()
  ..userId = json['user_id'] as String?
  ..status = json['status'] as String?
  ..appointmentTime = json['appointment_time'] as String?;

Map<String, dynamic> _$WashResponseToJson(WashResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'type': instance.type,
      'note': instance.note,
      'car_id': instance.carId,
      'lat': instance.lat,
      'lng': instance.lng,
      'user_id': instance.userId,
      'status': instance.status,
      'appointment_time': instance.appointmentTime,
    };
