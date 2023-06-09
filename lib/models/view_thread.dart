import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/models/post.dart';
import 'package:keylol_api/models/special_poll.dart';
import 'package:keylol_api/models/thread.dart';
import 'package:keylol_api/models/variables.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'view_thread.g.dart';

@customJsonSerializable
class ViewThread extends Variables {
  @JsonKey(name: 'fid')
  final String fid;

  @JsonKey(name: 'thread')
  final Thread thread;

  @JsonKey(name: 'postlist')
  final List<Post> postList;

  @JsonKey(name: 'special_poll', disallowNullValue: false)
  final SpecialPoll? specialPoll;

  const ViewThread(
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
      this.fid,
      this.thread,
      this.postList,
      this.specialPoll);

  factory ViewThread.fromJson(Map<String, dynamic> json) =>
      _$ViewThreadFromJson(json);

  Map<String, dynamic> toJson() => _$ViewThreadToJson(this);
}
