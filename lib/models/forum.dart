import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'forum.g.dart';

@customJsonSerializable
class Forum {
  @JsonKey(name: 'fid')
  final String fid;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'rules')
  final String rules;

  @JsonKey(name: 'threads')
  final int threads;

  @JsonKey(name: 'posts')
  final int posts;

  @JsonKey(name: 'todayposts')
  final int todayPosts;

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'icon')
  final String icon;

  Forum(this.fid, this.name, this.rules, this.threads, this.posts,
      this.todayPosts, this.description, this.icon);

  factory Forum.fromJson(Map<String, dynamic> json) => _$ForumFromJson(json);

  Map<String, dynamic> toJson() => _$ForumToJson(this);
}
