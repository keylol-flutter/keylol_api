// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PollOption _$PollOptionFromJson(Map<String, dynamic> json) => PollOption(
      json['polloptionid'] as String,
      json['polloption'] as String,
      stringToInt(json['votes'] as String),
      json['width'] as String,
      stringToDouble(json['percent'] as String),
      json['color'] as String,
    );

Map<String, dynamic> _$PollOptionToJson(PollOption instance) =>
    <String, dynamic>{
      'polloptionid': instance.pollOptionId,
      'polloption': instance.pollOption,
      'votes': stringFromInt(instance.votes),
      'width': instance.width,
      'percent': stringFromDouble(instance.percent),
      'color': instance.color,
    };
