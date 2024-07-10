// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'privacy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Privacy _$PrivacyFromJson(Map<String, dynamic> json) => Privacy(
      Privacy.feedFromJson(json['feed']),
      Privacy.viewFromJson(json['view']),
      Privacy.profileFromJson(json['profile']),
    );

Map<String, dynamic> _$PrivacyToJson(Privacy instance) => <String, dynamic>{
      'feed': instance.feed,
      'view': instance.view,
      'profile': instance.profie,
    };
