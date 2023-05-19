// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_note_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyNoteList _$MyNoteListFromJson(Map<String, dynamic> json) => MyNoteList(
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
          .map((e) => Note.fromJson(e as Map<String, dynamic>))
          .toList(),
      stringToInt(json['count'] as String),
      stringToInt(json['perpage'] as String),
      stringToInt(json['page'] as String),
    );

Map<String, dynamic> _$MyNoteListToJson(MyNoteList instance) =>
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
      'count': stringFromInt(instance.count),
      'perpage': stringFromInt(instance.perPage),
      'page': stringFromInt(instance.page),
    };
