// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FileBody _$FileBodyFromJson(Map<String, dynamic> json) => FileBody()
  ..fileName =
      (json['fileNames'] as List<dynamic>?)?.map((e) => e as String).toList();

Map<String, dynamic> _$FileBodyToJson(FileBody instance) => <String, dynamic>{
      'fileNames': instance.fileName,
    };
