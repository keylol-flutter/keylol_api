// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Friend _$FriendFromJson(Map<String, dynamic> json) => Friend(
      const StringConverter().fromJson(json['uid']),
      const StringConverter().fromJson(json['username']),
    );

Map<String, dynamic> _$FriendToJson(Friend instance) => <String, dynamic>{
      'uid': const StringConverter().toJson(instance.uid),
      'username': const StringConverter().toJson(instance.username),
    };
