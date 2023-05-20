// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_privacy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedPrivacy _$FeedPrivacyFromJson(Map<String, dynamic> json) => FeedPrivacy(
      stringToInt(json['doing'] as String),
      stringToInt(json['blog'] as String),
      stringToInt(json['upload'] as String),
      stringToInt(json['share'] as String),
      stringToInt(json['poll'] as String),
      stringToInt(json['joinPoll'] as String),
      stringToInt(json['friend'] as String),
      stringToInt(json['comment'] as String),
      stringToInt(json['show'] as String),
      stringToInt(json['credit'] as String),
      stringToInt(json['spaceopen'] as String),
      stringToInt(json['invite'] as String),
      stringToInt(json['task'] as String),
      stringToInt(json['profile'] as String),
      stringToInt(json['click'] as String),
      stringToInt(json['newthread'] as String),
      stringToInt(json['newreply'] as String),
    );

Map<String, dynamic> _$FeedPrivacyToJson(FeedPrivacy instance) =>
    <String, dynamic>{
      'doing': stringFromInt(instance.doing),
      'blog': stringFromInt(instance.blog),
      'upload': stringFromInt(instance.upload),
      'share': stringFromInt(instance.share),
      'poll': stringFromInt(instance.poll),
      'joinPoll': stringFromInt(instance.joinPoll),
      'friend': stringFromInt(instance.friend),
      'comment': stringFromInt(instance.comment),
      'show': stringFromInt(instance.show),
      'credit': stringFromInt(instance.credit),
      'spaceopen': stringFromInt(instance.spaceOpen),
      'invite': stringFromInt(instance.invite),
      'task': stringFromInt(instance.task),
      'profile': stringFromInt(instance.profile),
      'click': stringFromInt(instance.click),
      'newthread': stringFromInt(instance.newThread),
      'newreply': stringFromInt(instance.newReply),
    };
