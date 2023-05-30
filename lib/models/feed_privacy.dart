import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'feed_privacy.g.dart';

@customJsonSerializable
class FeedPrivacy {
  @JsonKey(name: 'doing')
  final int doing;

  @JsonKey(name: 'blog')
  final int blog;

  @JsonKey(name: 'upload')
  final int upload;

  @JsonKey(name: 'share')
  final int share;

  @JsonKey(name: 'poll')
  final int poll;

  @JsonKey(name: 'joinPoll')
  final int joinPoll;

  @JsonKey(name: 'friend')
  final int friend;

  @JsonKey(name: 'comment')
  final int comment;

  @JsonKey(name: 'show')
  final int show;

  @JsonKey(name: 'credit')
  final int credit;

  @JsonKey(name: 'spaceopen')
  final int spaceOpen;

  @JsonKey(name: 'invite')
  final int invite;

  @JsonKey(name: 'task')
  final int task;

  @JsonKey(name: 'profile')
  final int profile;

  @JsonKey(name: 'click')
  final int click;

  @JsonKey(name: 'newthread')
  final int newThread;

  @JsonKey(name: 'newreply')
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
