// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comment _$CommentFromJson(Map<String, dynamic> json) => Comment(
      const StringConverter().fromJson(json['id']),
      const StringConverter().fromJson(json['tid']),
      const StringConverter().fromJson(json['pid']),
      const StringConverter().fromJson(json['author']),
      const StringConverter().fromJson(json['authorid']),
      const StringConverter().fromJson(json['dateline']),
      const StringConverter().fromJson(json['comment']),
      const StringConverter().fromJson(json['avatar']),
    );

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
      'id': const StringConverter().toJson(instance.id),
      'tid': const StringConverter().toJson(instance.tid),
      'pid': const StringConverter().toJson(instance.pid),
      'author': const StringConverter().toJson(instance.author),
      'authorid': const StringConverter().toJson(instance.authorId),
      'dateline': const StringConverter().toJson(instance.dateline),
      'comment': const StringConverter().toJson(instance.comment),
      'avatar': const StringConverter().toJson(instance.avatar),
    };
