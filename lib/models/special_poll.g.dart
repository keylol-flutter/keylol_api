// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_poll.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecialPoll _$SpecialPollFromJson(Map<String, dynamic> json) => SpecialPoll(
      SpecialPoll.pollOptionsFromList(
          json['polloptions'] as Map<String, dynamic>),
      const IntConverter().fromJson(json['expirations']),
      const StringConverter().fromJson(json['multiple']),
      const IntConverter().fromJson(json['maxchoices']),
      const IntConverter().fromJson(json['voterscount']),
      const IntConverter().fromJson(json['visiblepoll']),
      const BoolConverter().fromJson(json['allowvote']),
    );

Map<String, dynamic> _$SpecialPollToJson(SpecialPoll instance) =>
    <String, dynamic>{
      'polloptions': instance.pollOptions,
      'expirations': const IntConverter().toJson(instance.expirations),
      'multiple': const StringConverter().toJson(instance.multiple),
      'maxchoices': const IntConverter().toJson(instance.maxChoices),
      'voterscount': const IntConverter().toJson(instance.votersCount),
      'visiblepoll': const IntConverter().toJson(instance.visiblePoll),
      'allowvote': const BoolConverter().toJson(instance.allowVote),
    };
