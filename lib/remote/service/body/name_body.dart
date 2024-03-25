import 'package:json_annotation/json_annotation.dart';

part 'name_body.g.dart';

@JsonSerializable()
class NameBody {

  @JsonKey(name: 'full_name')
  String? fullName;

  NameBody();

  factory NameBody.fromJson(Map<String, dynamic> json) =>
      _$NameBodyFromJson(json);

  Map<String, dynamic> toJson() => _$NameBodyToJson(this);
}
