// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_thread.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ViewThread _$ViewThreadFromJson(Map<String, dynamic> json) => ViewThread(
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
      json['fid'] as String,
      Thread.fromJson(json['thread'] as Map<String, dynamic>),
      (json['postlist'] as List<dynamic>)
          .map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['special_poll'] == null
          ? null
          : SpecialPoll.fromJson(json['special_poll'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ViewThreadToJson(ViewThread instance) =>
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
      'fid': instance.fid,
      'thread': instance.thread,
      'postlist': instance.postList,
      'special_poll': instance.specialPoll,
    };
