import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/models/note.dart';
import 'package:keylol_api/models/variables.dart';
import 'package:keylol_api/models/notice.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'my_note_list.g.dart';

@JsonSerializable()
class MyNoteList extends Variables {
  @JsonKey(name: 'list')
  final List<Note> list;

  @JsonKey(name: 'count', fromJson: stringToInt, toJson: stringFromInt)
  final int count;

  @JsonKey(name: 'perpage', fromJson: stringToInt, toJson: stringFromInt)
  final int perPage;

  @JsonKey(name: 'page', fromJson: stringToInt, toJson: stringFromInt)
  final int page;

  MyNoteList(
      super.cookiePre,
      super.auth,
      super.saltKey,
      super.memberUid,
      super.memberUsername,
      super.memberAvatar,
      super.groupId,
      super.formHash,
      super.isModerator,
      super.readAccess,
      super.notice,
      this.list,
      this.count,
      this.perPage,
      this.page);

  factory MyNoteList.fromJson(Map<String, dynamic> json) =>
      _$MyNoteListFromJson(json);

  Map<String, dynamic> toJson() => _$MyNoteListToJson(this);
}
