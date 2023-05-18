// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forum_display.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForumDisplay _$ForumDisplayFromJson(Map<String, dynamic> json) => ForumDisplay(
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
      Forum.fromJson(json['forum'] as Map<String, dynamic>),
      (json['forum_threadlist'] as List<dynamic>)
          .map((e) => Thread.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['sublist'] as List<dynamic>)
          .map((e) => Forum.fromJson(e as Map<String, dynamic>))
          .toList(),
      ForumDisplay.threadTypesFromJson(
          json['threadtypes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ForumDisplayToJson(ForumDisplay instance) =>
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
      'forum': instance.forum,
      'forum_threadlist': instance.forumThreadList,
      'sublist': instance.subList,
      'threadtypes': instance.threadTypes,
    };
