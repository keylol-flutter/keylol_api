// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'privacy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Privacy _$PrivacyFromJson(Map<String, dynamic> json) => Privacy(
      FeedPrivacy.fromJson(json['feed'] as Map<String, dynamic>),
      ViewPrivacy.fromJson(json['view'] as Map<String, dynamic>),
      ProfilePrivacy.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PrivacyToJson(Privacy instance) => <String, dynamic>{
      'feed': instance.feed,
      'view': instance.view,
      'profile': instance.profie,
    };
