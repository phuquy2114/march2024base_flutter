import 'package:json_annotation/json_annotation.dart';

part 'car_body.g.dart';

@JsonSerializable()
class CarBody {
  @JsonKey(name: 'license_number')
  String? licenseNumber;

  @JsonKey(name: 'model_id')
  String? modelId;

  CarBody();

  factory CarBody.fromJson(Map<String, dynamic> json) =>
      _$CarBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CarBodyToJson(this);
}
