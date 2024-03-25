import 'package:json_annotation/json_annotation.dart';

part 'wash_body.g.dart';

@JsonSerializable()
class WashBody {
  @JsonKey(name: 'address')
  String? address;

  @JsonKey(name: 'type')
  String? type;

  @JsonKey(name: 'note')
  String? note;

  @JsonKey(name: 'car_id')
  String? carId;

  @JsonKey(name: 'appointment_time')
  String? appointmentTime;

  @JsonKey(name: 'lat')
  double? lat;

  @JsonKey(name: 'lng')
  double? lng;

  WashBody();

  factory WashBody.fromJson(Map<String, dynamic> json) =>
      _$WashBodyFromJson(json);

  Map<String, dynamic> toJson() => _$WashBodyToJson(this);
}
