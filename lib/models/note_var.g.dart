// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_var.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteVar _$NoteVarFromJson(Map<String, dynamic> json) => NoteVar(
      const StringConverter().fromJson(json['tid']),
      const StringConverter().fromJson(json['pid']),
      const StringConverter().fromJson(json['subject']),
      const StringConverter().fromJson(json['actoruid']),
      const StringConverter().fromJson(json['actorusername']),
    );

Map<String, dynamic> _$NoteVarToJson(NoteVar instance) => <String, dynamic>{
      'tid': const StringConverter().toJson(instance.tid),
      'pid': const StringConverter().toJson(instance.pid),
      'subject': const StringConverter().toJson(instance.subject),
      'actoruid': const StringConverter().toJson(instance.actorUid),
      'actorusername': const StringConverter().toJson(instance.actorUsername),
    };
