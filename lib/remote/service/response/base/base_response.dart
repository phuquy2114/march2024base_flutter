import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse {
  @JsonKey(name: 'success', defaultValue: false)
  bool? success;

  @JsonKey(name: 'status')
  int? status;

  @JsonKey(name: 'message')
  String? message;

  @JsonKey(name: 'errors')
  int? errors;

  BaseResponse();

  // factory BaseResponse.fromJson(
  //         Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
  //     _$BaseResponseFromJson(json, fromJsonT);

  // Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
  //     _$BaseResponseToJson(this, toJsonT);

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}

