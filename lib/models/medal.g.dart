// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Medal _$MedalFromJson(Map<String, dynamic> json) => Medal(
      json['name'] as String,
      json['image'] as String,
      json['description'] as String,
      json['medalid'] as String,
    );

Map<String, dynamic> _$MedalToJson(Medal instance) => <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'medalid': instance.medalId,
    };
