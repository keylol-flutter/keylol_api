// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attach_remain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttachRemain _$AttachRemainFromJson(Map<String, dynamic> json) => AttachRemain(
      const IntConverter().fromJson(json['size']),
      const IntConverter().fromJson(json['count']),
    );

Map<String, dynamic> _$AttachRemainToJson(AttachRemain instance) =>
    <String, dynamic>{
      'size': const IntConverter().toJson(instance.size),
      'count': const IntConverter().toJson(instance.count),
    };
