// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allow_perm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllowPerm _$AllowPermFromJson(Map<String, dynamic> json) => AllowPerm(
      stringToInt(json['allowpost'] as String),
      stringToInt(json['allowreply'] as String),
      AllowUpload.fromJson(json['allowupload'] as Map<String, dynamic>),
      json['uploadhash'] as String,
    );

Map<String, dynamic> _$AllowPermToJson(AllowPerm instance) => <String, dynamic>{
      'allowpost': stringFromInt(instance.allowPost),
      'allowreply': stringFromInt(instance.allowReply),
      'allowupload': instance.allowUpload,
      'uploadhash': instance.uploadHash,
    };
