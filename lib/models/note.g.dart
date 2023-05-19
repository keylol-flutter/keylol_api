// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Note _$NoteFromJson(Map<String, dynamic> json) => Note(
      json['id'] as String,
      json['uid'] as String,
      json['type'] as String,
      stringToBool(json['new'] as String),
      json['authorid'] as String,
      json['author'] as String? ?? '',
      json['note'] as String,
      json['dateline'] as String,
      json['fromid'] as String,
      json['fromidtype'] as String? ?? '',
      json['fromnum'] as String,
      json['notevar'] == null
          ? null
          : NoteVar.fromJson(json['notevar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NoteToJson(Note instance) => <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'type': instance.type,
      'new': stringFromBool(instance.isNew),
      'authorid': instance.authorId,
      'author': instance.author,
      'note': instance.note,
      'dateline': instance.dateline,
      'fromid': instance.fromId,
      'fromidtype': instance.fromIdType,
      'fromnum': instance.fromNum,
      'notevar': instance.noteVar,
    };
