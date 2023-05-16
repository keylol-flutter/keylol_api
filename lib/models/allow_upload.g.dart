// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allow_upload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllowUpload _$AllowUploadFromJson(Map<String, dynamic> json) => AllowUpload(
      stringToInt(json['jpg'] as String),
      stringToInt(json['jpeg'] as String),
      stringToInt(json['gif'] as String),
      stringToInt(json['png'] as String),
      stringToInt(json['mp3'] as String),
      stringToInt(json['txt'] as String),
      stringToInt(json['zip'] as String),
      stringToInt(json['rar'] as String),
      stringToInt(json['pdf'] as String),
    );

Map<String, dynamic> _$AllowUploadToJson(AllowUpload instance) =>
    <String, dynamic>{
      'jpg': stringFromInt(instance.jpg),
      'jpeg': stringFromInt(instance.jpeg),
      'gif': stringFromInt(instance.gif),
      'png': stringFromInt(instance.png),
      'mp3': stringFromInt(instance.mp3),
      'txt': stringFromInt(instance.txt),
      'zip': stringFromInt(instance.zip),
      'rar': stringFromInt(instance.rar),
      'pdf': stringFromInt(instance.pdf),
    };
