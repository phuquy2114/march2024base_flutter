import 'package:json_annotation/json_annotation.dart';



part 'base_data_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseDataResponse<T>  {

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

  BaseDataResponse(this.data);

  factory BaseDataResponse.fromJson(
      Map<String, dynamic> json, T Function(Object? json) fromJsonT) {
    return _$BaseDataResponseFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) {
    return _$BaseDataResponseToJson<T>(this, toJsonT);
  }
}


@JsonSerializable(genericArgumentFactories: true)
class Data<T> {

  @JsonKey(name: 'result')
  T? result;

  Data(this.result);

  factory Data.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) {
    return _$DataFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) {
    return _$DataToJson<T>(this, toJsonT);
  }
}