// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attachment _$AttachmentFromJson(Map<String, dynamic> json) => Attachment(
      const StringConverter().fromJson(json['aid']),
      const StringConverter().fromJson(json['tid']),
      const StringConverter().fromJson(json['pid']),
      const StringConverter().fromJson(json['uid']),
      const StringConverter().fromJson(json['dateline']),
      const StringConverter().fromJson(json['filename']),
      const StringConverter().fromJson(json['attachment']),
      const StringConverter().fromJson(json['remote']),
      const StringConverter().fromJson(json['description']),
      const IntConverter().fromJson(json['readperm']),
      const IntConverter().fromJson(json['price']),
      const BoolConverter().fromJson(json['isimage']),
      const DoubleConverter().fromJson(json['width']),
      const StringConverter().fromJson(json['thumb']),
      const StringConverter().fromJson(json['picid']),
      const StringConverter().fromJson(json['ext']),
      const StringConverter().fromJson(json['imgalt']),
      const StringConverter().fromJson(json['attachicon']),
      const StringConverter().fromJson(json['attachsize']),
      const StringConverter().fromJson(json['attachimg']),
      const StringConverter().fromJson(json['payed']),
      const StringConverter().fromJson(json['url']),
      const StringConverter().fromJson(json['dbdateline']),
      const StringConverter().fromJson(json['aidencode']),
      const IntConverter().fromJson(json['downloads']),
    );

Map<String, dynamic> _$AttachmentToJson(Attachment instance) =>
    <String, dynamic>{
      'aid': const StringConverter().toJson(instance.aid),
      'tid': const StringConverter().toJson(instance.tid),
      'pid': const StringConverter().toJson(instance.pid),
      'uid': const StringConverter().toJson(instance.uid),
      'dateline': const StringConverter().toJson(instance.dateline),
      'filename': const StringConverter().toJson(instance.fileName),
      'attachment': const StringConverter().toJson(instance.attachment),
      'remote': const StringConverter().toJson(instance.remote),
      'description': const StringConverter().toJson(instance.description),
      'readperm': const IntConverter().toJson(instance.readPerm),
      'price': const IntConverter().toJson(instance.price),
      'isimage': const BoolConverter().toJson(instance.isImage),
      'width': const DoubleConverter().toJson(instance.width),
      'thumb': const StringConverter().toJson(instance.thumb),
      'picid': const StringConverter().toJson(instance.picId),
      'ext': const StringConverter().toJson(instance.ext),
      'imgalt': const StringConverter().toJson(instance.imgAlt),
      'attachicon': const StringConverter().toJson(instance.attachIcon),
      'attachsize': const StringConverter().toJson(instance.attachSize),
      'attachimg': const StringConverter().toJson(instance.attachImg),
      'payed': const StringConverter().toJson(instance.payed),
      'url': const StringConverter().toJson(instance.url),
      'dbdateline': const StringConverter().toJson(instance.dbDateline),
      'aidencode': const StringConverter().toJson(instance.aidenCode),
      'downloads': const IntConverter().toJson(instance.downloads),
    };
