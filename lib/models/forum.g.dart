// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Forum _$ForumFromJson(Map<String, dynamic> json) => Forum(
      json['fid'] as String,
      json['name'] as String,
      stringToInt(json['threads'] as String),
      stringToInt(json['posts'] as String),
      stringToInt(json['todayposts'] as String),
      json['description'] as String,
    );

Map<String, dynamic> _$ForumToJson(Forum instance) => <String, dynamic>{
      'fid': instance.fid,
      'name': instance.name,
      'threads': stringFromInt(instance.threads),
      'posts': stringFromInt(instance.posts),
      'todayposts': stringFromInt(instance.todayPosts),
      'description': instance.description,
    };
