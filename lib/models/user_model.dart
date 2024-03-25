import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  @JsonKey(name: 'id')
  String? id;

  @JsonKey(name: 'full_name')
  String? name;

  @JsonKey(name: 'avatar')
  String? avatar;

  @JsonKey(name: 'provider')
  String? provider;

  @JsonKey(name: 'status')
  String? status;

  @JsonKey(name: 'level')
  String? level;

  @JsonKey(name: 'rank', defaultValue: 5)
  double? rank;

  @JsonKey(name: 'address')
  String? address;

  @JsonKey(name: 'email')
  String? email;

  @JsonKey(name: 'phone_number')
  String? phone;

  @JsonKey(name: 'is_deleted', defaultValue: false)
  bool? isDeleted;

  @JsonKey(name: 'created_at')
  String? createdAt;

  String get date {
    DateTime tempDate =
        DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(createdAt!);
    return DateFormat('MM:dd:yyyy').format(tempDate);
  }

  double get rankStar {
    switch (rank) {
      case 5:
        return 5;
      case 4:
        return 4;
      case 3:
        return 3;
      case 2:
        return 2;
    }
    return 1;
  }

  UserModel();

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
