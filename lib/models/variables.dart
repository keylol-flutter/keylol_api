import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/models/notice.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'variables.g.dart';

abstract class Variables {
  @JsonKey(name: 'cookiepre')
  final String cookiePre;

  @JsonKey(name: 'auth')
  final String? auth;

  @JsonKey(name: 'saltkey')
  final String saltKey;

  @JsonKey(name: 'member_uid')
  final String memberUid;

  @JsonKey(name: 'member_username')
  final String memberUsername;

  @JsonKey(name: 'member_avatar')
  final String memberAvatar;

  @JsonKey(name: 'groupid')
  final String groupId;

  @JsonKey(name: 'formhash')
  final String formHash;

  @JsonKey(name: 'ismoderator')
  final String? isModerator;

  @JsonKey(name: 'readaccess')
  final String readAccess;

  @JsonKey(name: 'notice')
  final Notice notice;

  Variables(
      this.cookiePre,
      this.auth,
      this.saltKey,
      this.memberUid,
      this.memberUsername,
      this.memberAvatar,
      this.groupId,
      this.formHash,
      this.isModerator,
      this.readAccess,
      this.notice);
}

@customJsonSerializable
class DefaultVariables extends Variables {
  DefaultVariables(
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
      super.notice);

  factory DefaultVariables.fromJson(Map<String, dynamic> json) =>
      _$DefaultVariablesFromJson(json);

  Map<String, dynamic> toJson() => _$DefaultVariablesToJson(this);
}
