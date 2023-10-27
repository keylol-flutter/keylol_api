// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Thread _$ThreadFromJson(Map<String, dynamic> json) => Thread(
      const StringConverter().fromJson(json['tid']),
      const StringConverter().fromJson(json['fid']),
      const StringConverter().fromJson(json['posttableid']),
      const StringConverter().fromJson(json['typeid']),
      const StringConverter().fromJson(json['sortid']),
      const IntConverter().fromJson(json['readperm']),
      const IntConverter().fromJson(json['price']),
      const StringConverter().fromJson(json['author']),
      const StringConverter().fromJson(json['authorid']),
      const StringConverter().fromJson(json['subject']),
      const StringConverter().fromJson(json['dateline']),
      const StringConverter().fromJson(json['lastpost']),
      const StringConverter().fromJson(json['lastposter']),
      const IntConverter().fromJson(json['views']),
      const IntConverter().fromJson(json['replies']),
      const IntConverter().fromJson(json['displayorder']),
      const StringConverter().fromJson(json['highlight']),
      const BoolConverter().fromJson(json['digest']),
      const StringConverter().fromJson(json['rate']),
      const StringConverter().fromJson(json['special']),
      const StringConverter().fromJson(json['attachment']),
      const StringConverter().fromJson(json['moderated']),
      const StringConverter().fromJson(json['closed']),
      const StringConverter().fromJson(json['stickreply']),
      const IntConverter().fromJson(json['recommends']),
      const StringConverter().fromJson(json['recommend_add']),
      const StringConverter().fromJson(json['recommend_sub']),
      const IntConverter().fromJson(json['heats']),
      const StringConverter().fromJson(json['status']),
      const BoolConverter().fromJson(json['isgroup']),
      const IntConverter().fromJson(json['favtimes']),
      const IntConverter().fromJson(json['sharetimes']),
      const StringConverter().fromJson(json['stamp']),
      const StringConverter().fromJson(json['icon']),
      const StringConverter().fromJson(json['pushedaid']),
      json['cover'],
      const StringConverter().fromJson(json['replycredit']),
      const IntConverter().fromJson(json['maxposition']),
      const StringConverter().fromJson(json['bgcolor']),
      const IntConverter().fromJson(json['comments']),
      const BoolConverter().fromJson(json['hidden']),
      const StringConverter().fromJson(json['linksubmit']),
      const StringConverter().fromJson(json['threadtable']),
      const StringConverter().fromJson(json['threadtableid']),
      const IntConverter().fromJson(json['addviews']),
      const IntConverter().fromJson(json['allreplies']),
      const BoolConverter().fromJson(json['is_archived']),
      const StringConverter().fromJson(json['subjectenc']),
      const StringConverter().fromJson(json['short_subject']),
      json['replycredit_rule'],
    );

Map<String, dynamic> _$ThreadToJson(Thread instance) => <String, dynamic>{
      'tid': const StringConverter().toJson(instance.tid),
      'fid': const StringConverter().toJson(instance.fid),
      'posttableid': const StringConverter().toJson(instance.postTableId),
      'typeid': const StringConverter().toJson(instance.typeId),
      'sortid': const StringConverter().toJson(instance.sortId),
      'readperm': const IntConverter().toJson(instance.readPerm),
      'price': const IntConverter().toJson(instance.price),
      'author': const StringConverter().toJson(instance.author),
      'authorid': const StringConverter().toJson(instance.authorId),
      'subject': const StringConverter().toJson(instance.subject),
      'dateline': const StringConverter().toJson(instance.dateline),
      'lastpost': const StringConverter().toJson(instance.lastPost),
      'lastposter': const StringConverter().toJson(instance.lastPoster),
      'views': const IntConverter().toJson(instance.views),
      'replies': const IntConverter().toJson(instance.replies),
      'displayorder': const IntConverter().toJson(instance.displayOrder),
      'highlight': const StringConverter().toJson(instance.highlight),
      'digest': const BoolConverter().toJson(instance.digest),
      'rate': const StringConverter().toJson(instance.rate),
      'special': const StringConverter().toJson(instance.special),
      'attachment': const StringConverter().toJson(instance.attachment),
      'moderated': const StringConverter().toJson(instance.moderated),
      'closed': const StringConverter().toJson(instance.closed),
      'stickreply': const StringConverter().toJson(instance.stickReply),
      'recommends': const IntConverter().toJson(instance.recommends),
      'recommend_add': const StringConverter().toJson(instance.recommendAdd),
      'recommend_sub': const StringConverter().toJson(instance.recommendSub),
      'heats': const IntConverter().toJson(instance.heats),
      'status': const StringConverter().toJson(instance.status),
      'isgroup': const BoolConverter().toJson(instance.isGroup),
      'favtimes': const IntConverter().toJson(instance.favTimes),
      'sharetimes': const IntConverter().toJson(instance.shareTimes),
      'stamp': const StringConverter().toJson(instance.stamp),
      'icon': const StringConverter().toJson(instance.icon),
      'pushedaid': const StringConverter().toJson(instance.pushedAId),
      'cover': instance.cover,
      'replycredit': const StringConverter().toJson(instance.replyCredit),
      'maxposition': const IntConverter().toJson(instance.maxPosition),
      'bgcolor': const StringConverter().toJson(instance.bgColor),
      'comments': const IntConverter().toJson(instance.comments),
      'hidden': const BoolConverter().toJson(instance.hidden),
      'linksubmit': const StringConverter().toJson(instance.linkSubmit),
      'threadtable': const StringConverter().toJson(instance.threadTable),
      'threadtableid': const StringConverter().toJson(instance.threadTableId),
      'addviews': const IntConverter().toJson(instance.addViews),
      'allreplies': const IntConverter().toJson(instance.allReplies),
      'is_archived': const BoolConverter().toJson(instance.isArchived),
      'subjectenc': const StringConverter().toJson(instance.subjectEnc),
      'short_subject': const StringConverter().toJson(instance.shortSubject),
      'replycredit_rule': instance.replyCreditRule,
    };
