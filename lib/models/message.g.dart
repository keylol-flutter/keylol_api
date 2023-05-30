// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      const StringConverter().fromJson(json['messagestr']),
      const StringConverter().fromJson(json['messageval']),
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'messagestr': const StringConverter().toJson(instance.messageStr),
      'messageval': const StringConverter().toJson(instance.messageVal),
    };
