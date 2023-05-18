// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cat _$CatFromJson(Map<String, dynamic> json) => Cat(
      json['fid'] as String,
      json['name'] as String,
      (json['forums'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$CatToJson(Cat instance) => <String, dynamic>{
      'fid': instance.fid,
      'name': instance.name,
      'forums': instance.forums,
    };
