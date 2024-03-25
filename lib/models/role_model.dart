import 'package:json_annotation/json_annotation.dart';

part 'role_model.g.dart';

@JsonSerializable()
class RoleModel {
  @JsonKey(name: 'id')
  String? id;

  @JsonKey(name: 'user_id')
  String? userId;

  @JsonKey(name: 'role_name')
  String? roleName;

  @JsonKey(name: 'status')
  String? status;

  RoleModel();

  factory RoleModel.fromJson(Map<String, dynamic> json) =>
      _$RoleModelFromJson(json);

  Map<String, dynamic> toJson() => _$RoleModelToJson(this);
}
