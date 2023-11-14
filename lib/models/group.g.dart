// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Group _$GroupFromJson(Map<String, dynamic> json) => Group(
      const StringConverter().fromJson(json['type']),
      const StringConverter().fromJson(json['grouptitle']),
      const IntConverter().fromJson(json['stars']),
      const ColorConverter().fromJson(json['color']),
      const StringConverter().fromJson(json['icon']),
      const StringConverter().fromJson(json['readaccess']),
      const StringConverter().fromJson(json['allowgetattach']),
      const StringConverter().fromJson(json['allowgetimage']),
      const StringConverter().fromJson(json['allowmediacode']),
      const StringConverter().fromJson(json['maxsigsize']),
      const StringConverter().fromJson(json['allowbegincode']),
      const StringConverter().fromJson(json['userstatusby']),
    );

Map<String, dynamic> _$GroupToJson(Group instance) => <String, dynamic>{
      'type': const StringConverter().toJson(instance.type),
      'grouptitle': const StringConverter().toJson(instance.groupTitle),
      'stars': const IntConverter().toJson(instance.stars),
      'color': const ColorConverter().toJson(instance.color),
      'icon': const StringConverter().toJson(instance.icon),
      'readaccess': const StringConverter().toJson(instance.readAccess),
      'allowgetattach': const StringConverter().toJson(instance.allowGetAttach),
      'allowgetimage': const StringConverter().toJson(instance.allowGetImage),
      'allowmediacode': const StringConverter().toJson(instance.allowMediaCode),
      'maxsigsize': const StringConverter().toJson(instance.maxSigSize),
      'allowbegincode': const StringConverter().toJson(instance.allowBeginCode),
      'userstatusby': const StringConverter().toJson(instance.userStatusBy),
    };
