// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PollOption _$PollOptionFromJson(Map<String, dynamic> json) => PollOption(
      const StringConverter().fromJson(json['polloptionid']),
      const StringConverter().fromJson(json['polloption']),
      const IntConverter().fromJson(json['votes']),
      const StringConverter().fromJson(json['width']),
      const DoubleConverter().fromJson(json['percent']),
      const StringConverter().fromJson(json['color']),
    );

Map<String, dynamic> _$PollOptionToJson(PollOption instance) =>
    <String, dynamic>{
      'polloptionid': const StringConverter().toJson(instance.pollOptionId),
      'polloption': const StringConverter().toJson(instance.pollOption),
      'votes': const IntConverter().toJson(instance.votes),
      'width': const StringConverter().toJson(instance.width),
      'percent': const DoubleConverter().toJson(instance.percent),
      'color': const StringConverter().toJson(instance.color),
    };
