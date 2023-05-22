// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_poll.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecialPoll _$SpecialPollFromJson(Map<String, dynamic> json) => SpecialPoll(
      SpecialPoll.pollOptionsFromList(
          json['polloptions'] as Map<String, dynamic>),
      stringToInt(json['expirations'] as String),
      json['multiple'] as String,
      stringToInt(json['maxchoices'] as String),
      stringToInt(json['voterscount'] as String),
      stringToInt(json['visiblepoll'] as String),
      stringToBool(json['allowvote'] as String),
    );

Map<String, dynamic> _$SpecialPollToJson(SpecialPoll instance) =>
    <String, dynamic>{
      'polloptions': instance.pollOptions,
      'expirations': stringFromInt(instance.expirations),
      'multiple': instance.multiple,
      'maxchoices': stringFromInt(instance.maxChoices),
      'voterscount': stringFromInt(instance.votersCount),
      'visiblepoll': stringFromInt(instance.visiblePoll),
      'allowvote': stringFromBool(instance.allowVote),
    };
