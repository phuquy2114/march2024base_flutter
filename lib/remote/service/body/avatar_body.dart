import 'package:json_annotation/json_annotation.dart';

part 'avatar_body.g.dart';

@JsonSerializable()
class AvatarBody {

  @JsonKey(name: 'avatar')
  String? avatar;

  AvatarBody();

  factory AvatarBody.fromJson(Map<String, dynamic> json) =>
      _$AvatarBodyFromJson(json);

  Map<String, dynamic> toJson() => _$AvatarBodyToJson(this);
}
