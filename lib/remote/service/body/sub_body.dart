import 'package:json_annotation/json_annotation.dart';

part 'sub_body.g.dart';

@JsonSerializable()
class SubBody {

  @JsonKey(name: 'device_token')
  String? token;

  SubBody();

  factory SubBody.fromJson(Map<String, dynamic> json) =>
      _$SubBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SubBodyToJson(this);
}
