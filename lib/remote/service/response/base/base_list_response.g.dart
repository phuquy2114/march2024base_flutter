// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseListResponse<T> _$BaseListResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BaseListResponse<T>(
      json['data'] == null
          ? null
          : Data<T>.fromJson(json['data'] as Map<String, dynamic>,
              (value) => fromJsonT(value)),
    )
      ..success = json['success'] as bool? ?? false
      ..status = json['status'] as int?
      ..message = json['message'] as String?
      ..errors = json['errors'] as int?;

Map<String, dynamic> _$BaseListResponseToJson<T>(
  BaseListResponse<T> instance,
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
      (json['result'] as List<dynamic>).map(fromJsonT).toList(),
    )
      ..total = json['total'] as int?
      ..limit = json['take'] as int?
      ..pages = json['skip'] as int?;

Map<String, dynamic> _$DataToJson<T>(
  Data<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'result': instance.result.map(toJsonT).toList(),
      'total': instance.total,
      'take': instance.limit,
      'skip': instance.pages,
    };
