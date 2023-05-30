import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'profile_privacy.g.dart';

@customJsonSerializable
class ProfilePrivacy {
  @JsonKey(name: 'realname')
  final int realName;

  @JsonKey(name: 'gender')
  final int gender;

  @JsonKey(name: 'birthday')
  final int birthday;

  @JsonKey(name: 'residecity')
  final int resideCity;

  @JsonKey(name: 'affectivestatus')
  final int affectiveStatus;

  @JsonKey(name: 'lookingfor')
  final int lookingFor;

  @JsonKey(name: 'bloodtype')
  final int bloodType;

  @JsonKey(name: 'education')
  final int education;

  @JsonKey(name: 'graduateSchool')
  final int graduateSchool;

  @JsonKey(name: 'bio')
  final int bio;

  @JsonKey(name: 'site')
  final int site;

  @JsonKey(name: 'idCard')
  final int idCard;

  @JsonKey(name: 'address')
  final int address;

  @JsonKey(name: 'zipcode')
  final int zipCode;

  @JsonKey(name: 'interest')
  final int interest;

  @JsonKey(name: 'idcardtype')
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
