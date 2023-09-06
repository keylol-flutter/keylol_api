// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Forum _$ForumFromJson(Map<String, dynamic> json) => Forum(
      const StringConverter().fromJson(json['fid']),
      const StringConverter().fromJson(json['name']),
      const StringConverter().fromJson(json['rules']),
      const IntConverter().fromJson(json['threads']),
      const IntConverter().fromJson(json['posts']),
      const IntConverter().fromJson(json['todayposts']),
      const StringConverter().fromJson(json['description']),
      const StringConverter().fromJson(json['icon']),
    );

Map<String, dynamic> _$ForumToJson(Forum instance) => <String, dynamic>{
      'fid': const StringConverter().toJson(instance.fid),
      'name': const StringConverter().toJson(instance.name),
      'rules': const StringConverter().toJson(instance.rules),
      'threads': const IntConverter().toJson(instance.threads),
      'posts': const IntConverter().toJson(instance.posts),
      'todayposts': const IntConverter().toJson(instance.todayPosts),
      'description': const StringConverter().toJson(instance.description),
      'icon': const StringConverter().toJson(instance.icon),
    };
