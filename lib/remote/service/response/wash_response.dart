import 'package:json_annotation/json_annotation.dart';

part 'wash_response.g.dart';

@JsonSerializable()
class WashResponse {

  @JsonKey(name: 'id')
  String? id;

  @JsonKey(name: 'address')
  String? address;

  @JsonKey(name: 'type')
  String? type;

  @JsonKey(name: 'note')
  String? note;

  @JsonKey(name: 'car_id')
  String? carId;

  @JsonKey(name: 'lat')
  double? lat;

  @JsonKey(name: 'lng')
  double? lng;

  @JsonKey(name: 'user_id')
  String? userId;

  @JsonKey(name: 'status')
  String? status;

  @JsonKey(name: 'appointment_time')
  String? appointmentTime;

  WashResponse();

  factory WashResponse.fromJson(Map<String, dynamic> json) =>
      _$WashResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WashResponseToJson(this);
}
