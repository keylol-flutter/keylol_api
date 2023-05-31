// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_thread.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ViewThread _$ViewThreadFromJson(Map<String, dynamic> json) => ViewThread(
      const StringConverter().fromJson(json['cookiepre']),
      const StringConverter().fromJson(json['auth']),
      const StringConverter().fromJson(json['saltkey']),
      const StringConverter().fromJson(json['member_uid']),
      const StringConverter().fromJson(json['member_username']),
      const StringConverter().fromJson(json['member_avatar']),
      const StringConverter().fromJson(json['groupid']),
      const StringConverter().fromJson(json['formhash']),
      const StringConverter().fromJson(json['ismoderator']),
      const StringConverter().fromJson(json['readaccess']),
      fromJson(json['notice']),
      const StringConverter().fromJson(json['fid']),
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
      'cookiepre': const StringConverter().toJson(instance.cookiePre),
      'auth': _$JsonConverterToJson<dynamic, String>(
          instance.auth, const StringConverter().toJson),
      'saltkey': const StringConverter().toJson(instance.saltKey),
      'member_uid': const StringConverter().toJson(instance.memberUid),
      'member_username':
          const StringConverter().toJson(instance.memberUsername),
      'member_avatar': const StringConverter().toJson(instance.memberAvatar),
      'groupid': const StringConverter().toJson(instance.groupId),
      'formhash': const StringConverter().toJson(instance.formHash),
      'ismoderator': _$JsonConverterToJson<dynamic, String>(
          instance.isModerator, const StringConverter().toJson),
      'readaccess': const StringConverter().toJson(instance.readAccess),
      'notice': toJson(instance.notice),
      'fid': const StringConverter().toJson(instance.fid),
      'thread': instance.thread,
      'postlist': instance.postList,
      'special_poll': instance.specialPoll,
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
