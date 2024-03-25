import 'package:json_annotation/json_annotation.dart';

part 'car_response.g.dart';

@JsonSerializable()
class CarResponse {

  @JsonKey(name: 'id')
  String? id;

  @JsonKey(name: 'license_number')
  String? licenseNumber;

  @JsonKey(name: 'model_id')
  String? modelId;

  @JsonKey(name: 'is_deleted')
  bool? isDeleted;

  CarResponse();

  factory CarResponse.fromJson(Map<String, dynamic> json) =>
      _$CarResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CarResponseToJson(this);
}
