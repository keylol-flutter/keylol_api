import 'package:html/dom.dart';
import 'package:html/parser.dart';
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

  @JsonKey(name: 'attachment', fromJson: stringToInt, toJson: stringFromInt)
  final int attachment;

  @JsonKey(name: 'status')
  final String status;

  @JsonKey(name: 'replycredit', fromJson: stringToInt, toJson: stringFromInt)
  final int replyCredit;

  @JsonKey(name: 'position', fromJson: stringToInt, toJson: stringFromInt)
  final int position;

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
  final Map<String, Attachment>? attachments;

  @JsonKey(name: 'imagelist')
  final List<String>? imageList;

  @JsonKey(name: 'groupiconid')
  final String groupIconId;

  String? _shortMessage;

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
      this.replyCredit,
      this.position,
      this.username,
      this.adminId,
      this.groupId,
      this.memberStatus,
      this.number,
      this.dbDateline,
      this.attachments,
      this.imageList,
      this.groupIconId);

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);

  /// 短 message
  /// 长度 100 以内回复帖子时引用显示用
  String shortMessage() {
    if (_shortMessage != null) {
      return _shortMessage!;
    }

    final document = parse(message);

    _shortMessage = '';
    for (final node in document.body!.nodes) {
      if (node is Text) {
        _shortMessage = _shortMessage! + node.text;
        if (_shortMessage!.length >= 100) break;
      } else if (node is Element) {
        _shortMessage = _shortMessage! + node.text;
        if (_shortMessage!.length >= 100) break;
      }
    }

    if (_shortMessage!.length >= 100) {
      _shortMessage = '${_shortMessage!.substring(0, 100)}...';
    }

    return _shortMessage!;
  }
}
