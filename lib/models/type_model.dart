import 'package:json_annotation/json_annotation.dart';

part 'type_model.g.dart';

@JsonSerializable()
class TypeModel {
  @JsonKey(name: 'id')
  String? id;

  @JsonKey(name: 'is_deleted')
  bool? isDeleted;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'price', defaultValue: 0)
  int? price;

  TypeModel();

  factory TypeModel.fromJson(Map<String, dynamic> json) =>
      _$TypeModelFromJson(json);

  Map<String, dynamic> toJson() => _$TypeModelToJson(this);
}
