import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'attachment.g.dart';

@customJsonSerializable
class Attachment {
  @JsonKey(name: 'aid')
  final String aid;

  @JsonKey(name: 'tid')
  final String tid;

  @JsonKey(name: 'pid')
  final String pid;

  @JsonKey(name: 'uid')
  final String uid;

  @JsonKey(name: 'dateline')
  final String dateline;

  @JsonKey(name: 'filename')
  final String fileName;

  @JsonKey(name: 'attachment')
  final String attachment;

  @JsonKey(name: 'remote')
  final String remote;

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'readperm')
  final int readPerm;

  @JsonKey(name: 'price')
  final int price;

  @JsonKey(name: 'isimage')
  final bool isImage;

  @JsonKey(name: 'width')
  final double width;

  @JsonKey(name: 'thumb')
  final String thumb;

  @JsonKey(name: 'picid')
  final String picId;

  @JsonKey(name: 'ext')
  final String ext;

  @JsonKey(name: 'imgalt')
  final String imgAlt;

  @JsonKey(name: 'attachicon')
  final String attachIcon;

  @JsonKey(name: 'attachsize')
  final String attachSize;

  @JsonKey(name: 'attachimg')
  final String attachImg;

  @JsonKey(name: 'payed')
  final String payed;

  @JsonKey(name: 'url')
  final String url;

  @JsonKey(name: 'dbdateline')
  final String dbDateline;

  @JsonKey(name: 'aidencode')
  final String aidenCode;

  @JsonKey(name: 'downloads')
  final int downloads;

  Attachment(
      this.aid,
      this.tid,
      this.pid,
      this.uid,
      this.dateline,
      this.fileName,
      this.attachment,
      this.remote,
      this.description,
      this.readPerm,
      this.price,
      this.isImage,
      this.width,
      this.thumb,
      this.picId,
      this.ext,
      this.imgAlt,
      this.attachIcon,
      this.attachSize,
      this.attachImg,
      this.payed,
      this.url,
      this.dbDateline,
      this.aidenCode,
      this.downloads);

  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);

  Map<String, dynamic> toJson() => _$AttachmentToJson(this);
}
