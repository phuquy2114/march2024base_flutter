import 'package:json_annotation/json_annotation.dart';

part 'near_body.g.dart';

@JsonSerializable()
class NearstBody {
  @JsonKey(name: 'lat')
  double? lat;

  @JsonKey(name: 'lng')
  double? lng;

  NearstBody();

  factory NearstBody.fromJson(Map<String, dynamic> json) =>
      _$NearstBodyFromJson(json);

  Map<String, dynamic> toJson() => _$NearstBodyToJson(this);
}
