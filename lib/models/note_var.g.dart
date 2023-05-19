// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_var.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteVar _$NoteVarFromJson(Map<String, dynamic> json) => NoteVar(
      json['tid'] as String,
      json['pid'] as String,
      json['subject'] as String,
      json['actoruid'] as String,
      json['actorusername'] as String,
    );

Map<String, dynamic> _$NoteVarToJson(NoteVar instance) => <String, dynamic>{
      'tid': instance.tid,
      'pid': instance.pid,
      'subject': instance.subject,
      'actoruid': instance.actorUid,
      'actorusername': instance.actorUsername,
    };
