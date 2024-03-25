import 'package:json_annotation/json_annotation.dart';

part 'file_body.g.dart';

@JsonSerializable()
class FileBody {

  @JsonKey(name: 'fileNames')
  List<String>? fileName;

  FileBody();

  factory FileBody.fromJson(Map<String, dynamic> json) =>
      _$FileBodyFromJson(json);

  Map<String, dynamic> toJson() => _$FileBodyToJson(this);
}
