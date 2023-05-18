// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_fav_thread.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyFavThread _$MyFavThreadFromJson(Map<String, dynamic> json) => MyFavThread(
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
      (json['list'] as List<dynamic>)
          .map((e) => FavThread.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['perpage'] as int,
      json['c'] as int,
    );

Map<String, dynamic> _$MyFavThreadToJson(MyFavThread instance) =>
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
      'list': instance.list,
      'perpage': instance.perPage,
      'c': instance.count,
    };
