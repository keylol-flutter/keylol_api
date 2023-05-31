// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_note_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyNoteList _$MyNoteListFromJson(Map<String, dynamic> json) => MyNoteList(
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
      (json['list'] as List<dynamic>)
          .map((e) => Note.fromJson(e as Map<String, dynamic>))
          .toList(),
      const IntConverter().fromJson(json['count']),
      const IntConverter().fromJson(json['perpage']),
      const IntConverter().fromJson(json['page']),
    );

Map<String, dynamic> _$MyNoteListToJson(MyNoteList instance) =>
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
      'list': instance.list,
      'count': const IntConverter().toJson(instance.count),
      'perpage': const IntConverter().toJson(instance.perPage),
      'page': const IntConverter().toJson(instance.page),
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
