// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      json['pid'] as String,
      json['tid'] as String,
      stringToBool(json['first'] as String),
      json['author'] as String,
      json['authorid'] as String,
      json['dateline'] as String,
      json['message'] as String,
      json['anonymous'] as String,
      json['attachment'] as int,
      json['status'] as String,
      json['username'] as String,
      json['adminid'] as String,
      json['groupid'] as String,
      json['memberstatus'] as String,
      stringToInt(json['number'] as String),
      json['dbdateline'] as String,
      (json['attachments'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Attachment.fromJson(e as Map<String, dynamic>)),
      ),
      (json['imagelist'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'pid': instance.pid,
      'tid': instance.tid,
      'first': stringFromBool(instance.first),
      'author': instance.author,
      'authorid': instance.authorId,
      'dateline': instance.dateline,
      'message': instance.message,
      'anonymous': instance.anonymous,
      'attachment': instance.attachment,
      'status': instance.status,
      'username': instance.username,
      'adminid': instance.adminId,
      'groupid': instance.groupId,
      'memberstatus': instance.memberStatus,
      'number': stringFromInt(instance.number),
      'dbdateline': instance.dbDateline,
      'attachments': instance.attachments,
      'imagelist': instance.imageList,
    };
