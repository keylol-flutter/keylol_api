// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fav_thread.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavThread _$FavThreadFromJson(Map<String, dynamic> json) => FavThread(
      const StringConverter().fromJson(json['favid']),
      const StringConverter().fromJson(json['uid']),
      const StringConverter().fromJson(json['id']),
      const StringConverter().fromJson(json['idtype']),
      const StringConverter().fromJson(json['spaceuid']),
      const StringConverter().fromJson(json['title']),
      const StringConverter().fromJson(json['description']),
      const StringConverter().fromJson(json['dateline']),
      const StringConverter().fromJson(json['icon']),
      const StringConverter().fromJson(json['url']),
      const IntConverter().fromJson(json['replies']),
      const StringConverter().fromJson(json['author']),
    );

Map<String, dynamic> _$FavThreadToJson(FavThread instance) => <String, dynamic>{
      'favid': const StringConverter().toJson(instance.favId),
      'uid': const StringConverter().toJson(instance.uid),
      'id': const StringConverter().toJson(instance.id),
      'idtype': const StringConverter().toJson(instance.idType),
      'spaceuid': const StringConverter().toJson(instance.spaceUid),
      'title': const StringConverter().toJson(instance.title),
      'description': const StringConverter().toJson(instance.description),
      'dateline': const StringConverter().toJson(instance.dateline),
      'icon': const StringConverter().toJson(instance.icon),
      'url': const StringConverter().toJson(instance.url),
      'replies': const IntConverter().toJson(instance.replies),
      'author': const StringConverter().toJson(instance.author),
    };
