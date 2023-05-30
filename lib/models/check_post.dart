import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/models/allow_perm.dart';
import 'package:keylol_api/models/variables.dart';
import 'package:keylol_api/models/notice.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'check_post.g.dart';

@customJsonSerializable
class CheckPost extends Variables {
  @JsonKey(name: 'allowperm')
  final AllowPerm allowPerm;

  CheckPost(
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
      this.allowPerm);

  factory CheckPost.fromJson(Map<String, dynamic> json) =>
      _$CheckPostFromJson(json);

  Map<String, dynamic> toJson() => _$CheckPostToJson(this);
}
