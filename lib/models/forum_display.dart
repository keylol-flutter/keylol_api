import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/models/forum.dart';
import 'package:keylol_api/models/thread.dart';
import 'package:keylol_api/models/thread_type.dart';
import 'package:keylol_api/models/variables.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'forum_display.g.dart';

@customJsonSerializable
class ForumDisplay extends Variables {
  @JsonKey(name: 'forum')
  final Forum forum;

  @JsonKey(name: 'forum_threadlist')
  final List<Thread> forumThreadList;

  @JsonKey(name: 'sublist')
  final List<Forum> subList;

  @JsonKey(name: 'threadtypes')
  final List<ThreadType> threadTypes;

  const ForumDisplay(
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
      this.forum,
      this.forumThreadList,
      this.subList,
      this.threadTypes);

  factory ForumDisplay.fromJson(Map<String, dynamic> json) =>
      _$ForumDisplayFromJson(json);

  Map<String, dynamic> toJson() => _$ForumDisplayToJson(this);

  static List<ThreadType> threadTypesFromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> types = json['types'];
    final Map<String, dynamic> icons = json['icons'];

    return types.entries
        .map((entry) =>
            ThreadType(entry.key, entry.value, icons[entry.key] ?? ''))
        .toList();
  }
}
