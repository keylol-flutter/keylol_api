// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Note _$NoteFromJson(Map<String, dynamic> json) => Note(
      const StringConverter().fromJson(json['id']),
      const StringConverter().fromJson(json['uid']),
      const StringConverter().fromJson(json['type']),
      const BoolConverter().fromJson(json['new']),
      const StringConverter().fromJson(json['authorid']),
      const StringConverter().fromJson(json['author']),
      const StringConverter().fromJson(json['note']),
      const StringConverter().fromJson(json['dateline']),
      const StringConverter().fromJson(json['fromid']),
      const StringConverter().fromJson(json['fromidtype']),
      const StringConverter().fromJson(json['fromnum']),
      json['notevar'] == null
          ? null
          : NoteVar.fromJson(json['notevar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NoteToJson(Note instance) => <String, dynamic>{
      'id': const StringConverter().toJson(instance.id),
      'uid': const StringConverter().toJson(instance.uid),
      'type': const StringConverter().toJson(instance.type),
      'new': const BoolConverter().toJson(instance.isNew),
      'authorid': const StringConverter().toJson(instance.authorId),
      'author': const StringConverter().toJson(instance.author),
      'note': const StringConverter().toJson(instance.note),
      'dateline': const StringConverter().toJson(instance.dateline),
      'fromid': const StringConverter().toJson(instance.fromId),
      'fromidtype': const StringConverter().toJson(instance.fromIdType),
      'fromnum': const StringConverter().toJson(instance.fromNum),
      'notevar': instance.noteVar,
    };
