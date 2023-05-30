import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/models/space.dart';
import 'package:keylol_api/models/variables.dart';
import 'package:keylol_api/models/notice.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'profile.g.dart';

@customJsonSerializable
class Profile extends Variables {
  @JsonKey(name: 'space')
  final Space space;

  Profile(
      super.cookiePre,
      super.auth,
      super.saltKey,
      super.memberUid,
      super.memberUsername,
      super.memberAvatar,
      super.groupId,
      super.formHash,
      super.isModerator,
      super.readAccess,
      super.notice,
      this.space);

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
