import 'package:json_annotation/json_annotation.dart';


part 'location_body.g.dart';

@JsonSerializable()
class LocationBody {
  
  @JsonKey(name: 'lat')
  double? lat;


  @JsonKey(name: 'lng')
  double? lng;

  LocationBody();

  factory LocationBody.fromJson(Map<String, dynamic> json) =>
      _$LocationBodyFromJson(json);

  Map<String, dynamic> toJson() => _$LocationBodyToJson(this);
}

