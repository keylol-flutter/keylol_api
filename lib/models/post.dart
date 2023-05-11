import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/models/attachment.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'post.g.dart';

@JsonSerializable()
class Post {
  @JsonKey(name: 'pid')
  final String pid;

  @JsonKey(name: 'tid')
  final String tid;

  @JsonKey(name: 'first', fromJson: stringToBool, toJson: stringFromBool)
  final bool first;

  @JsonKey(name: 'author')
  final String author;

  @JsonKey(name: 'authorid')
  final String authorId;

  @JsonKey(name: 'dateline')
  final String dateline;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'anonymous')
  final String anonymous;

  @JsonKey(name: 'attachment')
  final int attachment;

  @JsonKey(name: 'status')
  final String status;

  @JsonKey(name: 'username')
  final String username;

  @JsonKey(name: 'adminid')
  final String adminId;

  @JsonKey(name: 'groupid')
  final String groupId;

  @JsonKey(name: 'memberstatus')
  final String memberStatus;

  @JsonKey(name: 'number', fromJson: stringToInt, toJson: stringFromInt)
  final int number;

  @JsonKey(name: 'dbdateline')
  final String dbDateline;

  @JsonKey(name: 'attachments')
  final Map<String, Attachment> attachments;

  @JsonKey(name: 'imagelist')
  final List<String> imageList;

  Post(
      this.pid,
      this.tid,
      this.first,
      this.author,
      this.authorId,
      this.dateline,
      this.message,
      this.anonymous,
      this.attachment,
      this.status,
      this.username,
      this.adminId,
      this.groupId,
      this.memberStatus,
      this.number,
      this.dbDateline,
      this.attachments,
      this.imageList);

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}
