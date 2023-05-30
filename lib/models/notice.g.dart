// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Notice _$NoticeFromJson(Map<String, dynamic> json) => Notice(
      const IntConverter().fromJson(json['newpush']),
      const IntConverter().fromJson(json['newpm']),
      const IntConverter().fromJson(json['newprompt']),
      const IntConverter().fromJson(json['newmypost']),
    );

Map<String, dynamic> _$NoticeToJson(Notice instance) => <String, dynamic>{
      'newpush': const IntConverter().toJson(instance.newPush),
      'newpm': const IntConverter().toJson(instance.newPm),
      'newprompt': const IntConverter().toJson(instance.newPrompt),
      'newmypost': const IntConverter().toJson(instance.newMyPost),
    };
