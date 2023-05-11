import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'thread.g.dart';

@JsonSerializable()
class Thread {
  // 帖子 id
  @JsonKey(name: 'tid')
  final String tid;

  // 版块 id
  @JsonKey(name: 'fid')
  final String fid;
  @JsonKey(name: 'posttableid')
  final String postTableId;
  @JsonKey(name: 'typeid')
  final String typeId;
  @JsonKey(name: 'sortid')
  final String sortId;
  @JsonKey(name: 'readperm', fromJson: stringToInt, toJson: stringFromInt)
  final int readPerm;
  @JsonKey(name: 'price', fromJson: stringToInt, toJson: stringFromInt)
  final int price;

  // 作者
  @JsonKey(name: 'author')
  final String author;

  // 作者 id
  @JsonKey(name: 'authorid')
  final String authorId;

  // 标题
  @JsonKey(name: 'subject')
  final String subject;

  // 时间
  @JsonKey(name: 'dateline')
  final String dateline;

  // 最后回复时间
  @JsonKey(name: 'lastpost')
  final String lastPost;

  // 最后回复人
  @JsonKey(name: 'lastposter')
  final String lastPoster;

  // 查看数
  @JsonKey(name: 'views', fromJson: stringToInt, toJson: stringFromInt)
  final int views;

  // 回复数
  @JsonKey(name: 'replies', fromJson: stringToInt, toJson: stringFromInt)
  final int replies;
  @JsonKey(name: 'displayorder', fromJson: stringToInt, toJson: stringFromInt)
  final int displayOrder;
  @JsonKey(name: 'highlight')
  final String highlight;

  // 精华
  @JsonKey(name: 'digest', fromJson: stringToBool, toJson: stringFromBool)
  final bool digest;
  @JsonKey(name: 'rate')
  final String rate;
  @JsonKey(name: 'special')
  final String special;
  @JsonKey(name: 'attachment')
  final String attachment;
  @JsonKey(name: 'moderated')
  final String moderated;
  @JsonKey(name: 'closed')
  final String closed;
  @JsonKey(name: 'stickreply')
  final String stickReply;

  // 支持数
  @JsonKey(name: 'recommends', fromJson: stringToInt, toJson: stringFromInt)
  final int recommends;
  @JsonKey(name: 'recommend_add')
  final String recommendAdd;
  @JsonKey(name: 'recommend_sub')
  final String recommendSub;
  @JsonKey(name: 'heats', fromJson: stringToInt, toJson: stringFromInt)
  final int heats;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'isgroup', fromJson: stringToBool, toJson: stringFromBool)
  final bool isGroup;

  // 收藏数
  @JsonKey(name: 'favtimes', fromJson: stringToInt, toJson: stringFromInt)
  final int favTimes;

  // 分享数
  @JsonKey(name: 'sharetimes', fromJson: stringToInt, toJson: stringFromInt)
  final int shareTimes;
  @JsonKey(name: 'stamp')
  final String stamp;
  @JsonKey(name: 'icon')
  final String icon;
  @JsonKey(name: 'pushedaid')
  final String pushedAId;

  // 封面
  @JsonKey(name: 'cover')
  final String cover;
  @JsonKey(name: 'replycredit')
  final String replyCredit;
  @JsonKey(name: 'maxposition', fromJson: stringToInt, toJson: stringFromInt)
  final int maxPosition;
  @JsonKey(name: 'bgcolor')
  final String bgColor;
  @JsonKey(name: 'comments', fromJson: stringToInt, toJson: stringFromInt)
  final int comments;
  @JsonKey(name: 'hidden', fromJson: stringToBool, toJson: stringFromBool)
  final bool hidden;
  @JsonKey(name: 'linksubmit')
  final String linkSubmit;
  @JsonKey(name: 'threadtable')
  final String threadTable;
  @JsonKey(name: 'threadtableid')
  final String threadTableId;
  @JsonKey(name: 'addviews', fromJson: stringToInt, toJson: stringFromInt)
  final int addViews;
  @JsonKey(name: 'allreplies', fromJson: stringToInt, toJson: stringFromInt)
  final int allReplies;
  @JsonKey(name: 'is_archived', fromJson: stringToBool, toJson: stringFromBool)
  final bool isArchived;
  @JsonKey(name: 'subjectenc')
  final String subjectEnc;
  @JsonKey(name: 'short_subject')
  final String shortSubject;
  @JsonKey(name: 'replycredit_rule')
  final dynamic replyCreditRule;

  Thread(
      this.tid,
      this.fid,
      this.postTableId,
      this.typeId,
      this.sortId,
      this.readPerm,
      this.price,
      this.author,
      this.authorId,
      this.subject,
      this.dateline,
      this.lastPost,
      this.lastPoster,
      this.views,
      this.replies,
      this.displayOrder,
      this.highlight,
      this.digest,
      this.rate,
      this.special,
      this.attachment,
      this.moderated,
      this.closed,
      this.stickReply,
      this.recommends,
      this.recommendAdd,
      this.recommendSub,
      this.heats,
      this.status,
      this.isGroup,
      this.favTimes,
      this.shareTimes,
      this.stamp,
      this.icon,
      this.pushedAId,
      this.cover,
      this.replyCredit,
      this.maxPosition,
      this.bgColor,
      this.comments,
      this.hidden,
      this.linkSubmit,
      this.threadTable,
      this.threadTableId,
      this.addViews,
      this.allReplies,
      this.isArchived,
      this.subjectEnc,
      this.shortSubject,
      this.replyCreditRule);

  factory Thread.fromJson(Map<String, dynamic> json) => _$ThreadFromJson(json);

  Map<String, dynamic> toJson() => _$ThreadToJson(this);
}
