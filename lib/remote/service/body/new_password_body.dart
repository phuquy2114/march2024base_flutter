import 'package:json_annotation/json_annotation.dart';

part 'new_password_body.g.dart';

@JsonSerializable()
class NewPasswordBody {
  @JsonKey(name: 'email')
  String? email;

  @JsonKey(name: 'code')
  String? code;

  @JsonKey(name: 'new_password')
  String? new_password;

  @JsonKey(name: 'confirm_password')
  String? confirm_password;

  NewPasswordBody();

  factory NewPasswordBody.fromJson(Map<String, dynamic> json) =>
      _$NewPasswordBodyFromJson(json);

  Map<String, dynamic> toJson() => _$NewPasswordBodyToJson(this);
}
