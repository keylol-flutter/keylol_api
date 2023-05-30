// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allow_perm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllowPerm _$AllowPermFromJson(Map<String, dynamic> json) => AllowPerm(
      const IntConverter().fromJson(json['allowpost']),
      const IntConverter().fromJson(json['allowreply']),
      AllowUpload.fromJson(json['allowupload'] as Map<String, dynamic>),
      const StringConverter().fromJson(json['uploadhash']),
    );

Map<String, dynamic> _$AllowPermToJson(AllowPerm instance) => <String, dynamic>{
      'allowpost': const IntConverter().toJson(instance.allowPost),
      'allowreply': const IntConverter().toJson(instance.allowReply),
      'allowupload': instance.allowUpload,
      'uploadhash': const StringConverter().toJson(instance.uploadHash),
    };
