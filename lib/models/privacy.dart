import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/models/feed_privacy.dart';
import 'package:keylol_api/models/profile_privacy.dart';
import 'package:keylol_api/models/view_privacy.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'privacy.g.dart';

@customJsonSerializable
class Privacy {
  @JsonKey(name: 'feed', fromJson: feedFromJson)
  final FeedPrivacy feed;

  @JsonKey(name: 'view', fromJson: viewFromJson)
  final ViewPrivacy view;

  @JsonKey(name: 'profile', fromJson: profileFromJson)
  final ProfilePrivacy profie;

  Privacy(this.feed, this.view, this.profie);

  factory Privacy.fromJson(Map<String, dynamic> json) =>
      _$PrivacyFromJson(json);

  Map<String, dynamic> toJson() => _$PrivacyToJson(this);

  static FeedPrivacy feedFromJson(dynamic json) {
    if (json == '' || json == null || json is List<dynamic>) {
      return FeedPrivacy.fromJson({});
    }

    return FeedPrivacy.fromJson(json);
  }

  static ViewPrivacy viewFromJson(dynamic json) {
    if (json == '' || json == null || json is List<dynamic>) {
      return ViewPrivacy.fromJson({});
    }

    return ViewPrivacy.fromJson(json);
  }

  static ProfilePrivacy profileFromJson(dynamic json) {
    if (json == '' || json == null || json is List<dynamic>) {
      return ProfilePrivacy.fromJson({});
    }

    return ProfilePrivacy.fromJson(json);
  }
}
