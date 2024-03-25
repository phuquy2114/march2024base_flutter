import 'package:json_annotation/json_annotation.dart';

import 'mode_model.dart';

part 'car_model.g.dart';

@JsonSerializable()
class CarModel {
  @JsonKey(name: 'id')
  String? id;

  @JsonKey(name: 'user_id')
  String? userId;

  @JsonKey(name: 'role_name')
  String? roleName;

  @JsonKey(name: 'status')
  String? status;

  @JsonKey(name: 'license_number')
  String? licenseNumber;

  @JsonKey(name: 'model_id')
  String? modelId;

  @JsonKey(name: 'model')
  ModeModel? model;

  CarModel();

  factory CarModel.fromJson(Map<String, dynamic> json) =>
      _$CarModelFromJson(json);

  Map<String, dynamic> toJson() => _$CarModelToJson(this);
}
