// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Group _$GroupFromJson(Map<String, dynamic> json) => Group(
      json['type'] as String,
      json['groupTitle'] as String,
      stringToInt(json['stars'] as String),
      stringToColor(json['color'] as String),
      json['icon'] as String,
      json['readaccess'] as String,
      json['allowgetattach'] as String,
      json['allowgetimage'] as String,
      json['allowmediacode'] as String,
      json['maxsigsize'] as String,
      json['allowbegincode'] as String,
      json['userstatusby'] as String,
    );

Map<String, dynamic> _$GroupToJson(Group instance) => <String, dynamic>{
      'type': instance.type,
      'groupTitle': instance.groupTitle,
      'stars': stringFromInt(instance.stars),
      'color': stringFromColor(instance.color),
      'icon': instance.icon,
      'readaccess': instance.readAccess,
      'allowgetattach': instance.allowGetAttach,
      'allowgetimage': instance.allowGetImage,
      'allowmediacode': instance.allowMediaCode,
      'maxsigsize': instance.maxSigSize,
      'allowbegincode': instance.allowBeginCode,
      'userstatusby': instance.userStatusBy,
    };
