// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThreadType _$ThreadTypeFromJson(Map<String, dynamic> json) => ThreadType(
      json['type'] as String,
      json['name'] as String,
      json['icon'] as String,
    );

Map<String, dynamic> _$ThreadTypeToJson(ThreadType instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'icon': instance.icon,
    };
