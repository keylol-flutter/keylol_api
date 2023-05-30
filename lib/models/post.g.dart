// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      const StringConverter().fromJson(json['pid']),
      const StringConverter().fromJson(json['tid']),
      const BoolConverter().fromJson(json['first']),
      const StringConverter().fromJson(json['author']),
      const StringConverter().fromJson(json['authorid']),
      const StringConverter().fromJson(json['dateline']),
      const StringConverter().fromJson(json['message']),
      const StringConverter().fromJson(json['anonymous']),
      const IntConverter().fromJson(json['attachment']),
      const StringConverter().fromJson(json['status']),
      const IntConverter().fromJson(json['replycredit']),
      const IntConverter().fromJson(json['position']),
      const StringConverter().fromJson(json['username']),
      const StringConverter().fromJson(json['adminid']),
      const StringConverter().fromJson(json['groupid']),
      const StringConverter().fromJson(json['memberstatus']),
      const IntConverter().fromJson(json['number']),
      const StringConverter().fromJson(json['dbdateline']),
      (json['attachments'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Attachment.fromJson(e as Map<String, dynamic>)),
      ),
      (json['imagelist'] as List<dynamic>?)
          ?.map(const StringConverter().fromJson)
          .toList(),
      const StringConverter().fromJson(json['groupiconid']),
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'pid': const StringConverter().toJson(instance.pid),
      'tid': const StringConverter().toJson(instance.tid),
      'first': const BoolConverter().toJson(instance.first),
      'author': const StringConverter().toJson(instance.author),
      'authorid': const StringConverter().toJson(instance.authorId),
      'dateline': const StringConverter().toJson(instance.dateline),
      'message': const StringConverter().toJson(instance.message),
      'anonymous': const StringConverter().toJson(instance.anonymous),
      'attachment': const IntConverter().toJson(instance.attachment),
      'status': const StringConverter().toJson(instance.status),
      'replycredit': const IntConverter().toJson(instance.replyCredit),
      'position': const IntConverter().toJson(instance.position),
      'username': const StringConverter().toJson(instance.username),
      'adminid': const StringConverter().toJson(instance.adminId),
      'groupid': const StringConverter().toJson(instance.groupId),
      'memberstatus': const StringConverter().toJson(instance.memberStatus),
      'number': const IntConverter().toJson(instance.number),
      'dbdateline': const StringConverter().toJson(instance.dbDateline),
      'attachments': instance.attachments
          ?.map((k, e) => MapEntry(const StringConverter().toJson(k), e)),
      'imagelist':
          instance.imageList?.map(const StringConverter().toJson).toList(),
      'groupiconid': const StringConverter().toJson(instance.groupIconId),
    };
