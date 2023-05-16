// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attach_remain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttachRemain _$AttachRemainFromJson(Map<String, dynamic> json) => AttachRemain(
      stringToInt(json['size'] as String),
      stringToInt(json['count'] as String),
    );

Map<String, dynamic> _$AttachRemainToJson(AttachRemain instance) =>
    <String, dynamic>{
      'size': stringFromInt(instance.size),
      'count': stringFromInt(instance.count),
    };
