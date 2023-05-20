import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'feed_privacy.g.dart';

@JsonSerializable()
class FeedPrivacy {
  @JsonKey(name: 'doing', fromJson: stringToInt, toJson: stringFromInt)
  final int doing;

  @JsonKey(name: 'blog', fromJson: stringToInt, toJson: stringFromInt)
  final int blog;

  @JsonKey(name: 'upload', fromJson: stringToInt, toJson: stringFromInt)
  final int upload;

  @JsonKey(name: 'share', fromJson: stringToInt, toJson: stringFromInt)
  final int share;

  @JsonKey(name: 'poll', fromJson: stringToInt, toJson: stringFromInt)
  final int poll;

  @JsonKey(name: 'joinPoll', fromJson: stringToInt, toJson: stringFromInt)
  final int joinPoll;

  @JsonKey(name: 'friend', fromJson: stringToInt, toJson: stringFromInt)
  final int friend;

  @JsonKey(name: 'comment', fromJson: stringToInt, toJson: stringFromInt)
  final int comment;

  @JsonKey(name: 'show', fromJson: stringToInt, toJson: stringFromInt)
  final int show;

  @JsonKey(name: 'credit', fromJson: stringToInt, toJson: stringFromInt)
  final int credit;

  @JsonKey(name: 'spaceopen', fromJson: stringToInt, toJson: stringFromInt)
  final int spaceOpen;

  @JsonKey(name: 'invite', fromJson: stringToInt, toJson: stringFromInt)
  final int invite;

  @JsonKey(name: 'task', fromJson: stringToInt, toJson: stringFromInt)
  final int task;

  @JsonKey(name: 'profile', fromJson: stringToInt, toJson: stringFromInt)
  final int profile;

  @JsonKey(name: 'click', fromJson: stringToInt, toJson: stringFromInt)
  final int click;

  @JsonKey(name: 'newthread', fromJson: stringToInt, toJson: stringFromInt)
  final int newThread;

  @JsonKey(name: 'newreply', fromJson: stringToInt, toJson: stringFromInt)
  final int newReply;

  FeedPrivacy(
      this.doing,
      this.blog,
      this.upload,
      this.share,
      this.poll,
      this.joinPoll,
      this.friend,
      this.comment,
      this.show,
      this.credit,
      this.spaceOpen,
      this.invite,
      this.task,
      this.profile,
      this.click,
      this.newThread,
      this.newReply);

  factory FeedPrivacy.fromJson(Map<String, dynamic> json) =>
      _$FeedPrivacyFromJson(json);

  Map<String, dynamic> toJson() => _$FeedPrivacyToJson(this);
}
