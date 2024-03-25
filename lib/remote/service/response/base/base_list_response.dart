import 'package:json_annotation/json_annotation.dart';

import 'base_response.dart';


part 'base_list_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseListResponse<T>  {

  @JsonKey(name: 'data')
  Data<T>? data;

  @JsonKey(name: 'success', defaultValue: false)
  bool? success;

  @JsonKey(name: 'status')
  int? status;

  @JsonKey(name: 'message')
  String? message;

  @JsonKey(name: 'errors')
  int? errors;

  BaseListResponse(this.data);

  factory BaseListResponse.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) {
    return _$BaseListResponseFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) {
    return _$BaseListResponseToJson<T>(this, toJsonT);
  }
}

@JsonSerializable(genericArgumentFactories: true)
class Data<T> {

  @JsonKey(name: 'result')
  List<T> result;

  @JsonKey(name: 'total')
  int? total;

  @JsonKey(name: 'take')
  int? limit;

  @JsonKey(name: 'skip')
  int? pages;

  Data(this.result);

  factory Data.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) {
    return _$DataFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) {
    return _$DataToJson<T>(this, toJsonT);
  }
}
