import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/models/friend.dart';
import 'package:keylol_api/models/variables.dart';
import 'package:keylol_api/models/notice.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'space_friend.g.dart';

@customJsonSerializable
class SpaceFriend extends Variables {
  @JsonKey(name: 'list')
  final List<Friend> list;

  @JsonKey(name: 'count')
  final int count;

  SpaceFriend(
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
      this.list,
      this.count);

  factory SpaceFriend.fromJson(Map<String, dynamic> json) =>
      _$SpaceFriendFromJson(json);

  Map<String, dynamic> toJson() => _$SpaceFriendToJson(this);
}
