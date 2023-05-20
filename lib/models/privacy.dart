import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/models/feed_privacy.dart';
import 'package:keylol_api/models/profile_privacy.dart';
import 'package:keylol_api/models/view_privacy.dart';

part 'privacy.g.dart';

@JsonSerializable()
class Privacy {
  @JsonKey(name: 'feed')
  final FeedPrivacy feed;

  @JsonKey(name: 'view')
  final ViewPrivacy view;

  @JsonKey(name: 'profile')
  final ProfilePrivacy profie;

  Privacy(this.feed, this.view, this.profie);

  factory Privacy.fromJson(Map<String, dynamic> json) =>
      _$PrivacyFromJson(json);

  Map<String, dynamic> toJson() => _$PrivacyToJson(this);
}
