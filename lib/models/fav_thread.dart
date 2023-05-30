import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'fav_thread.g.dart';

@customJsonSerializable
class FavThread {
  @JsonKey(name: 'favid')
  final String favId;

  @JsonKey(name: 'uid')
  final String uid;

  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'idtype')
  final String idType;

  @JsonKey(name: 'spaceuid')
  final String spaceUid;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'dateline')
  final String dateline;

  @JsonKey(name: 'icon')
  final String icon;

  @JsonKey(name: 'url')
  final String url;

  @JsonKey(name: 'replies')
  final int replies;

  @JsonKey(name: 'author')
  final String author;

  FavThread(
      this.favId,
      this.uid,
      this.id,
      this.idType,
      this.spaceUid,
      this.title,
      this.description,
      this.dateline,
      this.icon,
      this.url,
      this.replies,
      this.author);

  factory FavThread.fromJson(Map<String, dynamic> json) =>
      _$FavThreadFromJson(json);

  Map<String, dynamic> toJson() => _$FavThreadToJson(this);
}
