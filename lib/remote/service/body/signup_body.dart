import 'package:json_annotation/json_annotation.dart';

part 'signup_body.g.dart';

@JsonSerializable()
class SignupBody {
  @JsonKey(name: 'email')
  String? email;

  @JsonKey(name: 'full_name')
  String? fullName;

  @JsonKey(name: 'avatar')
  String? avatar;

  @JsonKey(name: 'password')
  String? password;

  @JsonKey(name: 'phone_number')
  int? phone;

  SignupBody();

  factory SignupBody.fromJson(Map<String, dynamic> json) =>
      _$SignupBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SignupBodyToJson(this);
}
