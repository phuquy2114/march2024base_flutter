// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse<T> _$BaseResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BaseResponse<T>()
      ..data = _$nullableGenericFromJson(json['data'], fromJsonT)
      ..success = json['success'] as bool? ?? false
      ..message = json['message'] as String?
      ..errorMessage = json['error_message'] == null
          ? null
          : DataError.fromJson(json['error_message'] as Map<String, dynamic>);

Map<String, dynamic> _$BaseResponseToJson<T>(
  BaseResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'success': instance.success,
      'message': instance.message,
      'error_message': instance.errorMessage,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

DataError _$DataErrorFromJson(Map<String, dynamic> json) => DataError()
  ..statusCode = json['statusCode'] as int?
  ..message = json['message'] as String?;

Map<String, dynamic> _$DataErrorToJson(DataError instance) => <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
    };
