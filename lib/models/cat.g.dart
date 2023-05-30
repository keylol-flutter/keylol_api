// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cat _$CatFromJson(Map<String, dynamic> json) => Cat(
      const StringConverter().fromJson(json['fid']),
      const StringConverter().fromJson(json['name']),
      (json['forums'] as List<dynamic>)
          .map(const StringConverter().fromJson)
          .toList(),
    );

Map<String, dynamic> _$CatToJson(Cat instance) => <String, dynamic>{
      'fid': const StringConverter().toJson(instance.fid),
      'name': const StringConverter().toJson(instance.name),
      'forums': instance.forums.map(const StringConverter().toJson).toList(),
    };
