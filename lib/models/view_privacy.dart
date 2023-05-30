import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'view_privacy.g.dart';

@customJsonSerializable
class ViewPrivacy {
  @JsonKey(name: 'friend')
  final int friend;

  ViewPrivacy(this.friend);

  factory ViewPrivacy.fromJson(Map<String, dynamic> json) =>
      _$ViewPrivacyFromJson(json);

  Map<String, dynamic> toJson() => _$ViewPrivacyToJson(this);
}
