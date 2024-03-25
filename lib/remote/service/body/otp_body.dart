import 'package:json_annotation/json_annotation.dart';

part 'otp_body.g.dart';

@JsonSerializable()
class OtpBody {
  @JsonKey(name: 'email')
  String? email;

  @JsonKey(name: 'code')
  String? code;

  OtpBody();

  factory OtpBody.fromJson(Map<String, dynamic> json) =>
      _$OtpBodyFromJson(json);

  Map<String, dynamic> toJson() => _$OtpBodyToJson(this);
}
