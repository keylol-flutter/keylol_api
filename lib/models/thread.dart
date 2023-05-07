import 'package:json_annotation/json_annotation.dart';

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
  @JsonKey(name: 'readperm')
  final int readPerm;
  @JsonKey(name: 'price')
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
  @JsonKey(name: 'views')
  final int views;

  // 回复数
  @JsonKey(name: 'replies')
  final int replies;
  @JsonKey(name: 'displayorder')
  final int displayOrder;
  @JsonKey(name: 'highlight')
  final String highlight;

  // 精华
  @JsonKey(name: 'digest')
  final bool digest;
  @JsonKey(name: 'rate')
  final int rate;
  @JsonKey(name: 'special')
  final int special;
  @JsonKey(name: 'attachment')
  final int attachment;
  @JsonKey(name: 'moderated')
  final int moderated;
  @JsonKey(name: 'closed')
  final int closed;
  @JsonKey(name: 'stickreply')
  final int stickReply;

  // 支持数
  @JsonKey(name: 'recommends')
  final int recommends;
  @JsonKey(name: 'recommend_add')
  final int recommendAdd;
  @JsonKey(name: 'recommend_sub')
  final int recommendSub;
  @JsonKey(name: 'heats')
  final int heats;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'isgroup')
  final int isGroup;

  // 收藏数
  @JsonKey(name: 'favtimes')
  final int favTimes;

  // 分享数
  @JsonKey(name: 'sharetimes')
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
  final int replyCredit;
  @JsonKey(name: 'relatedbytag')
  final String relatedByTag;
  @JsonKey(name: 'maxposition')
  final int maxPosition;
  @JsonKey(name: 'bgcolor')
  final String bgColor;
  @JsonKey(name: 'comments')
  final int comments;
  @JsonKey(name: 'hidden')
  final int hidden;
  @JsonKey(name: 'linksubmit')
  final int linkSubmit;
  @JsonKey(name: 'threadtable')
  final String threadTable;
  @JsonKey(name: 'threadtableid')
  final String threadTableId;
  @JsonKey(name: 'addviews')
  final int addViews;
  @JsonKey(name: 'allreplies')
  final int allReplies;
  @JsonKey(name: 'is_archived')
  final bool isArchived;
  @JsonKey(name: 'archived')
  final int archived;
  @JsonKey(name: 'subjectenc')
  final String subjectEnc;
  @JsonKey(name: 'short_subject')
  final String shortSubject;
  @JsonKey(name: 'replycredit_rule')
  final dynamic replyCreditRule;
  @JsonKey(name: 'recommendlevel')
  final String recommendLevel;
  @JsonKey(name: 'heatlevel')
  final String heatLevel;
  @JsonKey(name: 'relay')
  final String relay;

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
      this.relatedByTag,
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
      this.archived,
      this.subjectEnc,
      this.shortSubject,
      this.replyCreditRule,
      this.recommendLevel,
      this.heatLevel,
      this.relay);

  factory Thread.fromJson(Map<String, dynamic> json) => _$ThreadFromJson(json);

  Map<String, dynamic> toJson() => _$ThreadToJson(this);
}
