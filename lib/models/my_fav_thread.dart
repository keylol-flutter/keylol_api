import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/models/fav_thread.dart';
import 'package:keylol_api/models/variables.dart';
import 'package:keylol_api/models/notice.dart';

part 'my_fav_thread.g.dart';

@JsonSerializable()
class MyFavThread extends Variables {
  @JsonKey(name: 'list')
  final List<FavThread> list;

  @JsonKey(name: 'perpage')
  final int perPage;

  @JsonKey(name: 'c')
  final int count;

  MyFavThread(super.cookiePre, super.auth, super.saltKey, super.memberUid, super.memberUsername, super.memberAvatar, super.groupId, super.formHash, super.isModerator, super.readAccess, super.notice, this.list, this.perPage, this.count);

  factory MyFavThread.fromJson(Map<String, dynamic> json) => _$MyFavThreadFromJson(json);

  Map<String, dynamic> toJson() => _$MyFavThreadToJson(this);
}