import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/models/comment.dart';
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

  @JsonKey(name: 'comments', fromJson: commentsFromJson)
  final Map<String, List<Comment>> comments;

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
      this.comments,
      this.specialPoll);

  factory ViewThread.fromJson(Map<String, dynamic> json) =>
      _$ViewThreadFromJson(json);

  Map<String, dynamic> toJson() => _$ViewThreadToJson(this);

  static Map<String, List<Comment>> commentsFromJson(dynamic json) {
    if (json == '' || json == null || json is! Map<String, dynamic>) {
      return {};
    }
    return json.map(
      (k, e) => MapEntry(
          k, (e as List<dynamic>).map((e) => Comment.fromJson(e)).toList()),
    );
  }
}
