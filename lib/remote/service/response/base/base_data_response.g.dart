// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseDataResponse<T> _$BaseDataResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BaseDataResponse<T>(
      json['data'] == null
          ? null
          : Data<T>.fromJson(json['data'] as Map<String, dynamic>,
              (value) => fromJsonT(value)),
    )
      ..success = json['success'] as bool? ?? false
      ..status = json['status'] as int?
      ..message = json['message'] as String?
      ..errors = json['errors'] as int?;

Map<String, dynamic> _$BaseDataResponseToJson<T>(
  BaseDataResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': instance.data?.toJson(
        (value) => toJsonT(value),
      ),
      'success': instance.success,
      'status': instance.status,
      'message': instance.message,
      'errors': instance.errors,
    };

Data<T> _$DataFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    Data<T>(
      _$nullableGenericFromJson(json['result'], fromJsonT),
    );

Map<String, dynamic> _$DataToJson<T>(
  Data<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'result': _$nullableGenericToJson(instance.result, toJsonT),
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
