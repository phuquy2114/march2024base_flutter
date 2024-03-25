import 'package:json_annotation/json_annotation.dart';

import 'type_model.dart';

part 'mode_model.g.dart';

@JsonSerializable()
class ModeModel {
  @JsonKey(name: 'id')
  String? id;

  @JsonKey(name: 'type_id')
  String? typeId;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'brand')
  String? brand;

  @JsonKey(name: 'is_deleted')
  bool? isDeleted;

  @JsonKey(name: 'type')
  TypeModel? type;

  ModeModel();

  factory ModeModel.fromJson(Map<String, dynamic> json) =>
      _$ModeModelFromJson(json);

  Map<String, dynamic> toJson() => _$ModeModelToJson(this);
}
