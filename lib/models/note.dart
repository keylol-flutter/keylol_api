import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/models/note_var.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'note.g.dart';

@JsonSerializable()
class Note {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'uid')
  final String uid;

  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'new', fromJson: stringToBool, toJson: stringFromBool)
  final bool isNew;

  @JsonKey(name: 'authorid')
  final String authorId;

  @JsonKey(name: 'author', defaultValue: '')
  final String author;

  @JsonKey(name: 'note')
  final String note;

  @JsonKey(name: 'dateline')
  final String dateline;

  @JsonKey(name: 'fromid')
  final String fromId;

  @JsonKey(name: 'fromidtype', defaultValue: '')
  final String fromIdType;

  @JsonKey(name: 'fromnum')
  final String fromNum;

  @JsonKey(name: 'notevar')
  final NoteVar? noteVar;

  Note(
      this.id,
      this.uid,
      this.type,
      this.isNew,
      this.authorId,
      this.author,
      this.note,
      this.dateline,
      this.fromId,
      this.fromIdType,
      this.fromNum,
      this.noteVar);

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);

  Map<String, dynamic> toJson() => _$NoteToJson(this);
}
