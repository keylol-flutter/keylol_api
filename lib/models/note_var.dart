import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'note_var.g.dart';

@customJsonSerializable
class NoteVar {
  @JsonKey(name: 'tid')
  final String tid;

  @JsonKey(name: 'pid')
  final String pid;

  @JsonKey(name: 'subject')
  final String subject;

  @JsonKey(name: 'actoruid')
  final String actorUid;

  @JsonKey(name: 'actorusername')
  final String actorUsername;

  NoteVar(this.tid, this.pid, this.subject, this.actorUid, this.actorUsername);

  factory NoteVar.fromJson(Map<String, dynamic> json) =>
      _$NoteVarFromJson(json);

  Map<String, dynamic> toJson() => _$NoteVarToJson(this);
}
