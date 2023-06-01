import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/models/cat.dart';
import 'package:keylol_api/models/forum.dart';
import 'package:keylol_api/models/variables.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'forum_index.g.dart';

@customJsonSerializable
class ForumIndex extends Variables {
  @JsonKey(name: 'catlist')
  final List<Cat> catList;

  @JsonKey(name: 'forumlist')
  final List<Forum> forumList;

  final Map<String, Forum> forumMap;

  ForumIndex(
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
      this.catList,
      this.forumList)
      : forumMap = {for (final forum in forumList) forum.fid: forum};

  factory ForumIndex.fromJson(Map<String, dynamic> json) =>
      _$ForumIndexFromJson(json);

  Map<String, dynamic> toJson() => _$ForumIndexToJson(this);
}
