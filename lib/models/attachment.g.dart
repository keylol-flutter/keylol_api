// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attachment _$AttachmentFromJson(Map<String, dynamic> json) => Attachment(
      json['aid'] as String,
      json['tid'] as String,
      json['pid'] as String,
      json['uid'] as String,
      json['dateline'] as String,
      json['filename'] as String,
      json['attachment'] as String,
      json['remote'] as String,
      json['description'] as String,
      stringToInt(json['readperm'] as String),
      stringToInt(json['price'] as String),
      stringToBool(json['isimage'] as String),
      stringToDouble(json['width'] as String),
      json['thumb'] as String,
      json['picid'] as String,
      json['ext'] as String,
      json['imgalt'] as String,
      json['attachicon'] as String,
      json['attachsize'] as String,
      json['attachimg'] as String,
      json['payed'] as String,
      json['url'] as String,
      json['dbdateline'] as String,
      json['aidencode'] as String,
      stringToInt(json['downloads'] as String),
    );

Map<String, dynamic> _$AttachmentToJson(Attachment instance) =>
    <String, dynamic>{
      'aid': instance.aid,
      'tid': instance.tid,
      'pid': instance.pid,
      'uid': instance.uid,
      'dateline': instance.dateline,
      'filename': instance.fileName,
      'attachment': instance.attachment,
      'remote': instance.remote,
      'description': instance.description,
      'readperm': stringFromInt(instance.readPerm),
      'price': stringFromInt(instance.price),
      'isimage': stringFromBool(instance.isImage),
      'width': stringFromDouble(instance.width),
      'thumb': instance.thumb,
      'picid': instance.picId,
      'ext': instance.ext,
      'imgalt': instance.imgAlt,
      'attachicon': instance.attachIcon,
      'attachsize': instance.attachSize,
      'attachimg': instance.attachImg,
      'payed': instance.payed,
      'url': instance.url,
      'dbdateline': instance.dbDateline,
      'aidencode': instance.aidenCode,
      'downloads': stringFromInt(instance.downloads),
    };
