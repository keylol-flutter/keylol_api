// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckPost _$CheckPostFromJson(Map<String, dynamic> json) => CheckPost(
      json['cookiepre'] as String,
      json['auth'] as String?,
      json['saltkey'] as String,
      json['member_uid'] as String,
      json['member_username'] as String,
      json['member_avatar'] as String,
      json['groupid'] as String,
      json['formhash'] as String,
      json['ismoderator'] as String?,
      json['readaccess'] as String,
      Notice.fromJson(json['notice'] as Map<String, dynamic>),
      AllowPerm.fromJson(json['allowperm'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CheckPostToJson(CheckPost instance) => <String, dynamic>{
      'cookiepre': instance.cookiePre,
      'auth': instance.auth,
      'saltkey': instance.saltKey,
      'member_uid': instance.memberUid,
      'member_username': instance.memberUsername,
      'member_avatar': instance.memberAvatar,
      'groupid': instance.groupId,
      'formhash': instance.formHash,
      'ismoderator': instance.isModerator,
      'readaccess': instance.readAccess,
      'notice': instance.notice,
      'allowperm': instance.allowPerm,
    };
