// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fav_thread.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavThread _$FavThreadFromJson(Map<String, dynamic> json) => FavThread(
      json['favid'] as String,
      json['uid'] as String,
      json['id'] as String,
      json['idtype'] as String,
      json['spaceuid'] as String,
      json['title'] as String,
      json['description'] as String,
      json['dateline'] as String,
      json['icon'] as String,
      json['url'] as String,
      stringToInt(json['replies'] as String),
      json['author'] as String,
    );

Map<String, dynamic> _$FavThreadToJson(FavThread instance) => <String, dynamic>{
      'favid': instance.favId,
      'uid': instance.uid,
      'id': instance.id,
      'idtype': instance.idType,
      'spaceuid': instance.spaceUid,
      'title': instance.title,
      'description': instance.description,
      'dateline': instance.dateline,
      'icon': instance.icon,
      'url': instance.url,
      'replies': stringFromInt(instance.replies),
      'author': instance.author,
    };
