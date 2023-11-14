// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Space _$SpaceFromJson(Map<String, dynamic> json) => Space(
      const StringConverter().fromJson(json['uid']),
      const StringConverter().fromJson(json['username']),
      const IntConverter().fromJson(json['status']),
      const IntConverter().fromJson(json['emailstatus']),
      const IntConverter().fromJson(json['avatarstatus']),
      const IntConverter().fromJson(json['videophotostatus']),
      const StringConverter().fromJson(json['adminid']),
      const StringConverter().fromJson(json['groupid']),
      const StringConverter().fromJson(json['groupexpiry']),
      const StringConverter().fromJson(json['extgroupids']),
      const StringConverter().fromJson(json['regdate']),
      const IntConverter().fromJson(json['credits']),
      const StringConverter().fromJson(json['notifysound']),
      const IntConverter().fromJson(json['timeoffset']),
      const IntConverter().fromJson(json['newpm']),
      const IntConverter().fromJson(json['newprompt']),
      const IntConverter().fromJson(json['accessmasks']),
      const StringConverter().fromJson(json['allowadmincp']),
      const BoolConverter().fromJson(json['onlyacceptfriendpm']),
      const StringConverter().fromJson(json['conisbind']),
      const StringConverter().fromJson(json['freeze']),
      const StringConverter().fromJson(json['self']),
      const IntConverter().fromJson(json['extcredits1']),
      const IntConverter().fromJson(json['extcredits2']),
      const IntConverter().fromJson(json['extcredits3']),
      const IntConverter().fromJson(json['extcredits4']),
      const IntConverter().fromJson(json['extcredits5']),
      const IntConverter().fromJson(json['extcredits6']),
      const IntConverter().fromJson(json['extcredits7']),
      const IntConverter().fromJson(json['extcredits8']),
      const IntConverter().fromJson(json['friends']),
      const IntConverter().fromJson(json['posts']),
      const IntConverter().fromJson(json['threads']),
      const IntConverter().fromJson(json['digestPosts']),
      const IntConverter().fromJson(json['doings']),
      const IntConverter().fromJson(json['blogs']),
      const IntConverter().fromJson(json['albums']),
      const IntConverter().fromJson(json['sharing']),
      const StringConverter().fromJson(json['attachsize']),
      const IntConverter().fromJson(json['views']),
      const StringConverter().fromJson(json['oltime']),
      const IntConverter().fromJson(json['todayattachs']),
      const StringConverter().fromJson(json['todayattachsize']),
      const IntConverter().fromJson(json['feeds']),
      const IntConverter().fromJson(json['follower']),
      const IntConverter().fromJson(json['following']),
      const IntConverter().fromJson(json['newfollower']),
      const IntConverter().fromJson(json['blacklist']),
      const StringConverter().fromJson(json['videophoto']),
      const StringConverter().fromJson(json['spacename']),
      const StringConverter().fromJson(json['spacedescription']),
      const StringConverter().fromJson(json['domain']),
      const StringConverter().fromJson(json['addsize']),
      const StringConverter().fromJson(json['addfriend']),
      const StringConverter().fromJson(json['menunum']),
      const StringConverter().fromJson(json['theme']),
      const StringConverter().fromJson(json['spacecss']),
      const StringConverter().fromJson(json['blockposition']),
      const StringConverter().fromJson(json['recentnote']),
      json['privacy'] == null
          ? null
          : Privacy.fromJson(json['privacy'] as Map<String, dynamic>),
      const StringConverter().fromJson(json['feedfriend']),
      (json['acceptemail'] as List<dynamic>?)
          ?.map(const StringConverter().fromJson)
          .toList(),
      const StringConverter().fromJson(json['magicgift']),
      const StringConverter().fromJson(json['stickblogs']),
      const IntConverter().fromJson(json['publishfeed']),
      const IntConverter().fromJson(json['customShow']),
      const StringConverter().fromJson(json['customStatus']),
      Space.medalsFromJson(json['medals']),
      const StringConverter().fromJson(json['sightml']),
      const StringConverter().fromJson(json['groupterms']),
      const StringConverter().fromJson(json['authstr']),
      const StringConverter().fromJson(json['groups']),
      const StringConverter().fromJson(json['attentiongroup']),
      const IntConverter().fromJson(json['gender']),
      const IntConverter().fromJson(json['birthyear']),
      const IntConverter().fromJson(json['birthmonth']),
      const IntConverter().fromJson(json['birthday']),
      const StringConverter().fromJson(json['consellation']),
      const StringConverter().fromJson(json['zodiac']),
      const StringConverter().fromJson(json['nationality']),
      const StringConverter().fromJson(json['birthprovince']),
      const StringConverter().fromJson(json['birthcity']),
      const StringConverter().fromJson(json['birthdist']),
      const StringConverter().fromJson(json['birthcommunity']),
      const StringConverter().fromJson(json['resideprovince']),
      const StringConverter().fromJson(json['residecity']),
      const StringConverter().fromJson(json['residecommunity']),
      const StringConverter().fromJson(json['residesuite']),
      const StringConverter().fromJson(json['graduateschool']),
      const StringConverter().fromJson(json['company']),
      const StringConverter().fromJson(json['education']),
      const StringConverter().fromJson(json['occupation']),
      const StringConverter().fromJson(json['position']),
      const StringConverter().fromJson(json['revenue']),
      const StringConverter().fromJson(json['affectiveStatus']),
      const StringConverter().fromJson(json['lookingfor']),
      const StringConverter().fromJson(json['bloodtype']),
      const StringConverter().fromJson(json['height']),
      const StringConverter().fromJson(json['weight']),
      const StringConverter().fromJson(json['site']),
      const StringConverter().fromJson(json['bio']),
      const StringConverter().fromJson(json['interest']),
      const StringConverter().fromJson(json['field1']),
      const StringConverter().fromJson(json['field2']),
      const StringConverter().fromJson(json['field3']),
      const StringConverter().fromJson(json['field4']),
      const StringConverter().fromJson(json['field5']),
      const StringConverter().fromJson(json['field6']),
      const StringConverter().fromJson(json['field7']),
      const StringConverter().fromJson(json['field8']),
      const StringConverter().fromJson(json['regport']),
      const StringConverter().fromJson(json['port']),
      const StringConverter().fromJson(json['lastvisit']),
      const StringConverter().fromJson(json['lastactivity']),
      const StringConverter().fromJson(json['lastpost']),
      const StringConverter().fromJson(json['lastsendemail']),
      const StringConverter().fromJson(json['invisible']),
      const StringConverter().fromJson(json['buyercredit']),
      const StringConverter().fromJson(json['sellerCredit']),
      const StringConverter().fromJson(json['favtimes']),
      const StringConverter().fromJson(json['sharetimes']),
      const StringConverter().fromJson(json['profileprogress']),
      json['admingroup'] == null
          ? null
          : Group.fromJson(json['admingroup'] as Map<String, dynamic>),
      json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
      const StringConverter().fromJson(json['lastactivitydb']),
      const StringConverter().fromJson(json['lastip_loc_province']),
      const StringConverter().fromJson(json['buyerrank']),
      const StringConverter().fromJson(json['sellerrank']),
      const StringConverter().fromJson(json['groupiconid']),
    );

Map<String, dynamic> _$SpaceToJson(Space instance) => <String, dynamic>{
      'uid': const StringConverter().toJson(instance.uid),
      'username': const StringConverter().toJson(instance.username),
      'status': const IntConverter().toJson(instance.status),
      'emailstatus': const IntConverter().toJson(instance.emailStatus),
      'avatarstatus': const IntConverter().toJson(instance.avatarStatus),
      'videophotostatus':
          const IntConverter().toJson(instance.videoPhotoStatus),
      'adminid': const StringConverter().toJson(instance.adminId),
      'groupid': const StringConverter().toJson(instance.groupId),
      'groupexpiry': const StringConverter().toJson(instance.groupExpiry),
      'extgroupids': const StringConverter().toJson(instance.extGroupIds),
      'regdate': const StringConverter().toJson(instance.regDate),
      'credits': const IntConverter().toJson(instance.credits),
      'notifysound': const StringConverter().toJson(instance.notifySound),
      'timeoffset': const IntConverter().toJson(instance.timeOffset),
      'newpm': const IntConverter().toJson(instance.newPm),
      'newprompt': const IntConverter().toJson(instance.newPrompt),
      'accessmasks': const IntConverter().toJson(instance.accessMasks),
      'allowadmincp': const StringConverter().toJson(instance.allowAdminCp),
      'onlyacceptfriendpm':
          const BoolConverter().toJson(instance.onlyAcceptFriendPm),
      'conisbind': const StringConverter().toJson(instance.conisbind),
      'freeze': const StringConverter().toJson(instance.freeze),
      'self': const StringConverter().toJson(instance.self),
      'extcredits1': const IntConverter().toJson(instance.extCredits1),
      'extcredits2': const IntConverter().toJson(instance.extCredits2),
      'extcredits3': const IntConverter().toJson(instance.extCredits3),
      'extcredits4': const IntConverter().toJson(instance.extCredits4),
      'extcredits5': const IntConverter().toJson(instance.extCredits5),
      'extcredits6': const IntConverter().toJson(instance.extCredits6),
      'extcredits7': const IntConverter().toJson(instance.extCredits7),
      'extcredits8': const IntConverter().toJson(instance.extCredits8),
      'friends': const IntConverter().toJson(instance.friends),
      'threads': const IntConverter().toJson(instance.threads),
      'posts': const IntConverter().toJson(instance.posts),
      'digestPosts': const IntConverter().toJson(instance.digestPosts),
      'doings': const IntConverter().toJson(instance.doings),
      'blogs': const IntConverter().toJson(instance.blogs),
      'albums': const IntConverter().toJson(instance.albums),
      'sharing': const IntConverter().toJson(instance.sharings),
      'attachsize': const StringConverter().toJson(instance.attachSize),
      'views': const IntConverter().toJson(instance.views),
      'oltime': const StringConverter().toJson(instance.olTime),
      'todayattachs': const IntConverter().toJson(instance.todayAttachs),
      'todayattachsize':
          const StringConverter().toJson(instance.todayAttachSize),
      'feeds': const IntConverter().toJson(instance.feeds),
      'follower': const IntConverter().toJson(instance.follower),
      'following': const IntConverter().toJson(instance.following),
      'newfollower': const IntConverter().toJson(instance.newFollower),
      'blacklist': const IntConverter().toJson(instance.blacklist),
      'videophoto': const StringConverter().toJson(instance.videoPhoto),
      'spacename': const StringConverter().toJson(instance.spaceName),
      'spacedescription':
          const StringConverter().toJson(instance.sapceDescription),
      'domain': const StringConverter().toJson(instance.domain),
      'addsize': const StringConverter().toJson(instance.addSize),
      'addfriend': const StringConverter().toJson(instance.addFriend),
      'menunum': const StringConverter().toJson(instance.menunum),
      'theme': const StringConverter().toJson(instance.theme),
      'spacecss': const StringConverter().toJson(instance.spaceCss),
      'blockposition': const StringConverter().toJson(instance.blockPosition),
      'recentnote': const StringConverter().toJson(instance.recentNote),
      'privacy': instance.privacy,
      'feedfriend': const StringConverter().toJson(instance.feedFriend),
      'acceptemail':
          instance.acceptEmail?.map(const StringConverter().toJson).toList(),
      'magicgift': const StringConverter().toJson(instance.magicGift),
      'stickblogs': const StringConverter().toJson(instance.stickBlogs),
      'publishfeed': const IntConverter().toJson(instance.publishFeed),
      'customShow': const IntConverter().toJson(instance.customShow),
      'customStatus': const StringConverter().toJson(instance.customStatus),
      'medals': instance.medals,
      'sightml': const StringConverter().toJson(instance.signHtml),
      'groupterms': const StringConverter().toJson(instance.groupTerms),
      'authstr': const StringConverter().toJson(instance.authStr),
      'groups': const StringConverter().toJson(instance.groups),
      'attentiongroup': const StringConverter().toJson(instance.attentionGroup),
      'gender': const IntConverter().toJson(instance.gender),
      'birthyear': const IntConverter().toJson(instance.birthYear),
      'birthmonth': const IntConverter().toJson(instance.brithMonth),
      'birthday': const IntConverter().toJson(instance.birthday),
      'consellation': const StringConverter().toJson(instance.consellation),
      'zodiac': const StringConverter().toJson(instance.zodiac),
      'nationality': const StringConverter().toJson(instance.nationality),
      'birthprovince': const StringConverter().toJson(instance.birthProvince),
      'birthcity': const StringConverter().toJson(instance.birthCity),
      'birthdist': const StringConverter().toJson(instance.birthDist),
      'birthcommunity': const StringConverter().toJson(instance.birthCommunity),
      'resideprovince': const StringConverter().toJson(instance.resideProvince),
      'residecity': const StringConverter().toJson(instance.resideCity),
      'residecommunity':
          const StringConverter().toJson(instance.resideCommunity),
      'residesuite': const StringConverter().toJson(instance.resideSuite),
      'graduateschool': const StringConverter().toJson(instance.graduateSchool),
      'company': const StringConverter().toJson(instance.company),
      'education': const StringConverter().toJson(instance.education),
      'occupation': const StringConverter().toJson(instance.occupation),
      'position': const StringConverter().toJson(instance.position),
      'revenue': const StringConverter().toJson(instance.revenue),
      'affectiveStatus':
          const StringConverter().toJson(instance.affectiveStatus),
      'lookingfor': const StringConverter().toJson(instance.lookingFor),
      'bloodtype': const StringConverter().toJson(instance.bloodType),
      'height': const StringConverter().toJson(instance.height),
      'weight': const StringConverter().toJson(instance.weight),
      'site': const StringConverter().toJson(instance.site),
      'bio': const StringConverter().toJson(instance.bio),
      'interest': const StringConverter().toJson(instance.interest),
      'field1': const StringConverter().toJson(instance.field1),
      'field2': const StringConverter().toJson(instance.field2),
      'field3': const StringConverter().toJson(instance.field3),
      'field4': const StringConverter().toJson(instance.field4),
      'field5': const StringConverter().toJson(instance.field5),
      'field6': const StringConverter().toJson(instance.field6),
      'field7': const StringConverter().toJson(instance.field7),
      'field8': const StringConverter().toJson(instance.field8),
      'regport': const StringConverter().toJson(instance.regPort),
      'port': const StringConverter().toJson(instance.port),
      'lastvisit': const StringConverter().toJson(instance.lastVisit),
      'lastactivity': const StringConverter().toJson(instance.lastActivity),
      'lastpost': const StringConverter().toJson(instance.lastPost),
      'lastsendemail': const StringConverter().toJson(instance.lastSendEmail),
      'invisible': const StringConverter().toJson(instance.invisible),
      'buyercredit': const StringConverter().toJson(instance.buyerCredit),
      'sellerCredit': const StringConverter().toJson(instance.sellerCredit),
      'favtimes': const StringConverter().toJson(instance.favTimes),
      'sharetimes': const StringConverter().toJson(instance.shareTimes),
      'profileprogress':
          const StringConverter().toJson(instance.profileProgress),
      'admingroup': instance.adminGroup,
      'group': instance.group,
      'lastactivitydb': const StringConverter().toJson(instance.lastActivityDb),
      'lastip_loc_province':
          const StringConverter().toJson(instance.lastIpLocProvince),
      'buyerrank': const StringConverter().toJson(instance.buyerRank),
      'sellerrank': const StringConverter().toJson(instance.sellerRank),
      'groupiconid': const StringConverter().toJson(instance.groupIconId),
    };
