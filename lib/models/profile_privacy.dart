import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'profile_privacy.g.dart';

@JsonSerializable()
class ProfilePrivacy {
  @JsonKey(name: 'realname', fromJson: stringToInt, toJson: stringFromInt)
  final int realName;

  @JsonKey(name: 'gender', fromJson: stringToInt, toJson: stringFromInt)
  final int gender;

  @JsonKey(name: 'birthday', fromJson: stringToInt, toJson: stringFromInt)
  final int birthday;

  @JsonKey(name: 'residecity', fromJson: stringToInt, toJson: stringFromInt)
  final int resideCity;

  @JsonKey(
      name: 'affectivestatus', fromJson: stringToInt, toJson: stringFromInt)
  final int affectiveStatus;

  @JsonKey(name: 'lookingfor', fromJson: stringToInt, toJson: stringFromInt)
  final int lookingFor;

  @JsonKey(name: 'bloodtype', fromJson: stringToInt, toJson: stringFromInt)
  final int bloodType;

  @JsonKey(name: 'education', fromJson: stringToInt, toJson: stringFromInt)
  final int education;

  @JsonKey(name: 'graduateSchool', fromJson: stringToInt, toJson: stringFromInt)
  final int graduateSchool;

  @JsonKey(name: 'bio', fromJson: stringToInt, toJson: stringFromInt)
  final int bio;

  @JsonKey(name: 'site', fromJson: stringToInt, toJson: stringFromInt)
  final int site;

  @JsonKey(name: 'idCard', fromJson: stringToInt, toJson: stringFromInt)
  final int idCard;

  @JsonKey(name: 'address', fromJson: stringToInt, toJson: stringFromInt)
  final int address;

  @JsonKey(name: 'zipcode', fromJson: stringToInt, toJson: stringFromInt)
  final int zipCode;

  @JsonKey(name: 'interest', fromJson: stringToInt, toJson: stringFromInt)
  final int interest;

  @JsonKey(name: 'idcardtype', fromJson: stringToInt, toJson: stringFromInt)
  final int idCardType;

  ProfilePrivacy(
      this.realName,
      this.gender,
      this.birthday,
      this.resideCity,
      this.affectiveStatus,
      this.lookingFor,
      this.bloodType,
      this.education,
      this.graduateSchool,
      this.bio,
      this.site,
      this.idCard,
      this.address,
      this.zipCode,
      this.interest,
      this.idCardType);

  factory ProfilePrivacy.fromJson(Map<String, dynamic> json) =>
      _$ProfilePrivacyFromJson(json);

  Map<String, dynamic> toJson() => _$ProfilePrivacyToJson(this);
}
