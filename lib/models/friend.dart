import 'package:json_annotation/json_annotation.dart';

part 'friend.g.dart';

@JsonSerializable()
class Friend {
  @JsonKey(name: 'uid')
  final String uid;

  @JsonKey(name: 'username')
  final String username;

  Friend(this.uid, this.username);

  factory Friend.fromJson(Map<String, dynamic> json) => _$FriendFromJson(json);

  Map<String, dynamic> toJson() => _$FriendToJson(this);
}
