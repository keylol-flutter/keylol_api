import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'forum.g.dart';

@customJsonSerializable
class Forum {
  @JsonKey(name: 'fid')
  final String fid;

  @JsonKey(name: 'fup')
  final String fup;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'rule')
  final String rule;

  @JsonKey(name: 'threads')
  final int threads;

  @JsonKey(name: 'posts')
  final int posts;

  @JsonKey(name: 'todayposts')
  final int todayPosts;

  @JsonKey(name: 'description')
  final String description;

  Forum(this.fid, this.fup, this.name, this.rule, this.threads, this.posts,
      this.todayPosts, this.description);

  factory Forum.fromJson(Map<String, dynamic> json) => _$ForumFromJson(json);

  Map<String, dynamic> toJson() => _$ForumToJson(this);
}
