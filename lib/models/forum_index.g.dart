// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forum_index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForumIndex _$ForumIndexFromJson(Map<String, dynamic> json) => ForumIndex(
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
      (json['catlist'] as List<dynamic>)
          .map((e) => Cat.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['forumlist'] as List<dynamic>)
          .map((e) => Forum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ForumIndexToJson(ForumIndex instance) =>
    <String, dynamic>{
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
      'catlist': instance.catList,
      'forumlist': instance.forumList,
    };
