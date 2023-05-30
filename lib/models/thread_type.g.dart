// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThreadType _$ThreadTypeFromJson(Map<String, dynamic> json) => ThreadType(
      const StringConverter().fromJson(json['type']),
      const StringConverter().fromJson(json['name']),
      const StringConverter().fromJson(json['icon']),
    );

Map<String, dynamic> _$ThreadTypeToJson(ThreadType instance) =>
    <String, dynamic>{
      'type': const StringConverter().toJson(instance.type),
      'name': const StringConverter().toJson(instance.name),
      'icon': const StringConverter().toJson(instance.icon),
    };
