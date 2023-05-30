// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allow_upload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllowUpload _$AllowUploadFromJson(Map<String, dynamic> json) => AllowUpload(
      const IntConverter().fromJson(json['jpg']),
      const IntConverter().fromJson(json['jpeg']),
      const IntConverter().fromJson(json['gif']),
      const IntConverter().fromJson(json['png']),
      const IntConverter().fromJson(json['mp3']),
      const IntConverter().fromJson(json['txt']),
      const IntConverter().fromJson(json['zip']),
      const IntConverter().fromJson(json['rar']),
      const IntConverter().fromJson(json['pdf']),
    );

Map<String, dynamic> _$AllowUploadToJson(AllowUpload instance) =>
    <String, dynamic>{
      'jpg': const IntConverter().toJson(instance.jpg),
      'jpeg': const IntConverter().toJson(instance.jpeg),
      'gif': const IntConverter().toJson(instance.gif),
      'png': const IntConverter().toJson(instance.png),
      'mp3': const IntConverter().toJson(instance.mp3),
      'txt': const IntConverter().toJson(instance.txt),
      'zip': const IntConverter().toJson(instance.zip),
      'rar': const IntConverter().toJson(instance.rar),
      'pdf': const IntConverter().toJson(instance.pdf),
    };
