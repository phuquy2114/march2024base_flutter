import 'package:json_annotation/json_annotation.dart';

part 'change_password_body.g.dart';

@JsonSerializable()
class ChangePasswordBody {
  @JsonKey(name: 'oldPassword')
  String? password;

  @JsonKey(name: 'newPassword')
  String? newPassword;

  ChangePasswordBody();

  factory ChangePasswordBody.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ChangePasswordBodyToJson(this);
}
