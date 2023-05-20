import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/models/friend.dart';
import 'package:keylol_api/models/variables.dart';
import 'package:keylol_api/models/notice.dart';

part 'friend_list.g.dart';

@JsonSerializable()
class FriendList extends Variables {
  @JsonKey(name: 'list')
  final List<Friend> list;

  @JsonKey(name: 'count')
  final int count;

  FriendList(
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

  factory FriendList.fromJson(Map<String, dynamic> json) =>
      _$FriendListFromJson(json);

  Map<String, dynamic> toJson() => _$FriendListToJson(this);
}
