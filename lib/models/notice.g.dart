// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Notice _$NoticeFromJson(Map<String, dynamic> json) => Notice(
      stringToInt(json['newpush'] as String),
      stringToInt(json['newpm'] as String),
      stringToInt(json['newprompt'] as String),
      stringToInt(json['newmypost'] as String),
    );

Map<String, dynamic> _$NoticeToJson(Notice instance) => <String, dynamic>{
      'newpush': stringFromInt(instance.newPush),
      'newpm': stringFromInt(instance.newPm),
      'newprompt': stringFromInt(instance.newPrompt),
      'newmypost': stringFromInt(instance.newMyPost),
    };
