import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'view_privacy.g.dart';

@JsonSerializable()
class ViewPrivacy {
  @JsonKey(name: 'friend', fromJson: stringToInt, toJson: stringFromInt)
  final int friend;

  ViewPrivacy(this.friend);

  factory ViewPrivacy.fromJson(Map<String, dynamic> json) => _$ViewPrivacyFromJson(json);

  Map<String, dynamic> toJson() => _$ViewPrivacyToJson(this);
}