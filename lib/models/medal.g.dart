// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Medal _$MedalFromJson(Map<String, dynamic> json) => Medal(
      const StringConverter().fromJson(json['name']),
      const StringConverter().fromJson(json['image']),
      const StringConverter().fromJson(json['description']),
      const StringConverter().fromJson(json['medalid']),
    );

Map<String, dynamic> _$MedalToJson(Medal instance) => <String, dynamic>{
      'name': const StringConverter().toJson(instance.name),
      'image': const StringConverter().toJson(instance.image),
      'description': const StringConverter().toJson(instance.description),
      'medalid': const StringConverter().toJson(instance.medalId),
    };
