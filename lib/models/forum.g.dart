// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Forum _$ForumFromJson(Map<String, dynamic> json) => Forum(
      const StringConverter().fromJson(json['fid']),
      const StringConverter().fromJson(json['fup']),
      const StringConverter().fromJson(json['name']),
      const StringConverter().fromJson(json['rule']),
      const IntConverter().fromJson(json['threads']),
      const IntConverter().fromJson(json['posts']),
      const IntConverter().fromJson(json['todayposts']),
      const StringConverter().fromJson(json['description']),
    );

Map<String, dynamic> _$ForumToJson(Forum instance) => <String, dynamic>{
      'fid': const StringConverter().toJson(instance.fid),
      'fup': const StringConverter().toJson(instance.fup),
      'name': const StringConverter().toJson(instance.name),
      'rule': const StringConverter().toJson(instance.rule),
      'threads': const IntConverter().toJson(instance.threads),
      'posts': const IntConverter().toJson(instance.posts),
      'todayposts': const IntConverter().toJson(instance.todayPosts),
      'description': const StringConverter().toJson(instance.description),
    };
