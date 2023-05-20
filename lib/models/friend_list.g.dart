// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FriendList _$FriendListFromJson(Map<String, dynamic> json) => FriendList(
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
          .map((e) => Friend.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['count'] as int,
    );

Map<String, dynamic> _$FriendListToJson(FriendList instance) =>
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
      'count': instance.count,
    };
