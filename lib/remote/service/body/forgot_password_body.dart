import 'package:json_annotation/json_annotation.dart';

part 'forgot_password_body.g.dart';

@JsonSerializable()
class ForgotPasswordBody {
  @JsonKey(name: 'email')
  String? email;

  ForgotPasswordBody();

  factory ForgotPasswordBody.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ForgotPasswordBodyToJson(this);
}
