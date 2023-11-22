import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'comment.g.dart';

@customJsonSerializable
class Comment {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'tid')
  final String tid;

  @JsonKey(name: 'pid')
  final String pid;

  @JsonKey(name: 'author')
  final String author;

  @JsonKey(name: 'authorid')
  final String authorId;

  @JsonKey(name: 'dateline')
  final String dateline;

  @JsonKey(name: 'comment')
  final String comment;

  @JsonKey(name: 'avatar')
  final String avatar;

  Comment(this.id, this.tid, this.pid, this.author, this.authorId,
      this.dateline, this.comment, this.avatar);

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);

  Map<String, dynamic> toJson() => _$CommentToJson(this);
}
