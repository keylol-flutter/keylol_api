// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Space _$SpaceFromJson(Map<String, dynamic> json) => Space(
      json['uid'] as String,
      json['username'] as String,
      stringToInt(json['status'] as String),
      stringToInt(json['emailstatus'] as String),
      stringToInt(json['avatarstatus'] as String),
      stringToInt(json['videophotostatus'] as String),
      json['adminid'] as String,
      json['groupid'] as String,
      json['groupexpiry'] as String,
      json['extgroupids'] as String,
      json['regdate'] as String,
      stringToInt(json['credits'] as String),
      json['notifysound'] as String,
      json['timeoffset'] as int,
      stringToInt(json['newpm'] as String),
      stringToInt(json['newprompt'] as String),
      stringToInt(json['accessmasks'] as String),
      json['allowadmincp'] as String,
      stringToBool(json['onlyacceptfriendpm'] as String),
      json['conisbind'] as String,
      json['freeze'] as String,
      json['self'] as String,
      stringToInt(json['extcredits1'] as String),
      stringToInt(json['extcredits2'] as String),
      stringToInt(json['extcredits3'] as String),
      stringToInt(json['extcredits4'] as String),
      stringToInt(json['extcredits5'] as String),
      stringToInt(json['extcredits6'] as String),
      stringToInt(json['extcredits7'] as String),
      stringToInt(json['extcredits8'] as String),
      stringToInt(json['friends'] as String),
      stringToInt(json['threads'] as String),
      stringToInt(json['digestPosts'] as String),
      stringToInt(json['doings'] as String),
      stringToInt(json['blogs'] as String),
      stringToInt(json['albums'] as String),
      stringToInt(json['sharing'] as String),
      json['attachsize'] as String,
      stringToInt(json['views'] as String),
      json['oltime'] as String,
      stringToInt(json['todayattachs'] as String),
      json['todayattachsize'] as String,
      stringToInt(json['feeds'] as String),
      stringToInt(json['follower'] as String),
      stringToInt(json['following'] as String),
      stringToInt(json['newfollower'] as String),
      stringToInt(json['blacklist'] as String),
      json['videophoto'] as String,
      json['spacename'] as String,
      json['spacedescription'] as String,
      json['domain'] as String,
      json['addsize'] as String,
      json['addfriend'] as String,
      json['menunum'] as String,
      json['theme'] as String,
      json['spacecss'] as String,
      json['blockposition'] as String,
      json['recentnote'] as String,
      Privacy.fromJson(json['privacy'] as Map<String, dynamic>),
      json['feedfriend'] as String,
      (json['acceptemail'] as List<dynamic>).map((e) => e as String).toList(),
      json['magicgift'] as String,
      json['stickblogs'] as String,
      stringToInt(json['publishfeed'] as String),
      stringToInt(json['customShow'] as String),
      json['customStatus'] as String,
      (json['medals'] as List<dynamic>)
          .map((e) => Medal.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['signhtml'] as String,
      json['groupterms'] as String,
      json['authstr'] as String,
      json['groups'] as String,
      json['attentiongroup'] as String,
      stringToInt(json['gender'] as String),
      stringToInt(json['birthyear'] as String),
      stringToInt(json['birthmonth'] as String),
      stringToInt(json['birthday'] as String),
      json['consellation'] as String,
      json['zodiac'] as String,
      json['nationality'] as String,
      json['birthprovince'] as String,
      json['birthcity'] as String,
      json['birthdist'] as String,
      json['birthcommunity'] as String,
      json['resideprovince'] as String,
      json['residecity'] as String,
      json['residecommunity'] as String,
      json['residesuite'] as String,
      json['graduateschool'] as String,
      json['company'] as String,
      json['education'] as String,
      json['occupation'] as String,
      json['position'] as String,
      json['revenue'] as String,
      json['affectiveStatus'] as String,
      json['lookingfor'] as String,
      json['bloodtype'] as String,
      json['height'] as String,
      json['weight'] as String,
      json['site'] as String,
      json['bio'] as String,
      json['interest'] as String,
      json['field1'] as String,
      json['field2'] as String,
      json['field3'] as String,
      json['field4'] as String,
      json['field5'] as String,
      json['field6'] as String,
      json['field7'] as String,
      json['field8'] as String,
      json['regport'] as String,
      json['port'] as String,
      json['lastvisit'] as String,
      json['lastactivity'] as String,
      json['lastpost'] as String,
      json['lastsendemail'] as String,
      json['invisible'] as String,
      json['buyercredit'] as String,
      json['sellerCredit'] as String,
      json['favtimes'] as String,
      json['sharetimes'] as String,
      json['profileprogress'] as String,
      Group.fromJson(json['admingroup'] as Map<String, dynamic>),
      Group.fromJson(json['group'] as Map<String, dynamic>),
      json['lastactivitydb'] as String,
      json['lastip_loc_province'] as String,
      json['buyerrank'] as String,
      json['sellerrank'] as String,
      json['groupiconid'] as String,
    );

Map<String, dynamic> _$SpaceToJson(Space instance) => <String, dynamic>{
      'uid': instance.uid,
      'username': instance.username,
      'status': stringFromInt(instance.status),
      'emailstatus': stringFromInt(instance.emailStatus),
      'avatarstatus': stringFromInt(instance.avatarStatus),
      'videophotostatus': stringFromInt(instance.videoPhotoStatus),
      'adminid': instance.adminId,
      'groupid': instance.groupId,
      'groupexpiry': instance.groupExpiry,
      'extgroupids': instance.extGroupIds,
      'regdate': instance.regDate,
      'credits': stringFromInt(instance.credits),
      'notifysound': instance.notifySound,
      'timeoffset': instance.timeOffset,
      'newpm': stringFromInt(instance.newPm),
      'newprompt': stringFromInt(instance.newPrompt),
      'accessmasks': stringFromInt(instance.accessMasks),
      'allowadmincp': instance.allowAdminCp,
      'onlyacceptfriendpm': stringFromBool(instance.onlyAcceptFriendPm),
      'conisbind': instance.conisbind,
      'freeze': instance.freeze,
      'self': instance.self,
      'extcredits1': stringFromInt(instance.extCredits1),
      'extcredits2': stringFromInt(instance.extCredits2),
      'extcredits3': stringFromInt(instance.extCredits3),
      'extcredits4': stringFromInt(instance.extCredits4),
      'extcredits5': stringFromInt(instance.extCredits5),
      'extcredits6': stringFromInt(instance.extCredits6),
      'extcredits7': stringFromInt(instance.extCredits7),
      'extcredits8': stringFromInt(instance.extCredits8),
      'friends': stringFromInt(instance.friends),
      'threads': stringFromInt(instance.threads),
      'digestPosts': stringFromInt(instance.digestPosts),
      'doings': stringFromInt(instance.doings),
      'blogs': stringFromInt(instance.blogs),
      'albums': stringFromInt(instance.albums),
      'sharing': stringFromInt(instance.sharings),
      'attachsize': instance.attachSize,
      'views': stringFromInt(instance.views),
      'oltime': instance.olTime,
      'todayattachs': stringFromInt(instance.todayAttachs),
      'todayattachsize': instance.todayAttachSize,
      'feeds': stringFromInt(instance.feeds),
      'follower': stringFromInt(instance.follower),
      'following': stringFromInt(instance.following),
      'newfollower': stringFromInt(instance.newFollower),
      'blacklist': stringFromInt(instance.blacklist),
      'videophoto': instance.videoPhoto,
      'spacename': instance.spaceName,
      'spacedescription': instance.sapceDescription,
      'domain': instance.domain,
      'addsize': instance.addSize,
      'addfriend': instance.addFriend,
      'menunum': instance.menunum,
      'theme': instance.theme,
      'spacecss': instance.spaceCss,
      'blockposition': instance.blockPosition,
      'recentnote': instance.recentNote,
      'privacy': instance.privacy,
      'feedfriend': instance.feedFriend,
      'acceptemail': instance.acceptEmail,
      'magicgift': instance.magicGift,
      'stickblogs': instance.stickBlogs,
      'publishfeed': stringFromInt(instance.publishFeed),
      'customShow': stringFromInt(instance.customShow),
      'customStatus': instance.customStatus,
      'medals': instance.medals,
      'signhtml': instance.signHtml,
      'groupterms': instance.groupTerms,
      'authstr': instance.authStr,
      'groups': instance.groups,
      'attentiongroup': instance.attentionGroup,
      'gender': stringFromInt(instance.gender),
      'birthyear': stringFromInt(instance.birthYear),
      'birthmonth': stringFromInt(instance.brithMonth),
      'birthday': stringFromInt(instance.birthday),
      'consellation': instance.consellation,
      'zodiac': instance.zodiac,
      'nationality': instance.nationality,
      'birthprovince': instance.birthProvince,
      'birthcity': instance.birthCity,
      'birthdist': instance.birthDist,
      'birthcommunity': instance.birthCommunity,
      'resideprovince': instance.resideProvince,
      'residecity': instance.resideCity,
      'residecommunity': instance.resideCommunity,
      'residesuite': instance.resideSuite,
      'graduateschool': instance.graduateSchool,
      'company': instance.company,
      'education': instance.education,
      'occupation': instance.occupation,
      'position': instance.position,
      'revenue': instance.revenue,
      'affectiveStatus': instance.affectiveStatus,
      'lookingfor': instance.lookingFor,
      'bloodtype': instance.bloodType,
      'height': instance.height,
      'weight': instance.weight,
      'site': instance.site,
      'bio': instance.bio,
      'interest': instance.interest,
      'field1': instance.field1,
      'field2': instance.field2,
      'field3': instance.field3,
      'field4': instance.field4,
      'field5': instance.field5,
      'field6': instance.field6,
      'field7': instance.field7,
      'field8': instance.field8,
      'regport': instance.regPort,
      'port': instance.port,
      'lastvisit': instance.lastVisit,
      'lastactivity': instance.lastActivity,
      'lastpost': instance.lastPost,
      'lastsendemail': instance.lastSendEmail,
      'invisible': instance.invisible,
      'buyercredit': instance.buyerCredit,
      'sellerCredit': instance.sellerCredit,
      'favtimes': instance.favTimes,
      'sharetimes': instance.shareTimes,
      'profileprogress': instance.profileProgress,
      'admingroup': instance.adminGroup,
      'group': instance.group,
      'lastactivitydb': instance.lastActivityDb,
      'lastip_loc_province': instance.lastIpLocProvince,
      'buyerrank': instance.buyerRank,
      'sellerrank': instance.sellerRank,
      'groupiconid': instance.groupIconId,
    };