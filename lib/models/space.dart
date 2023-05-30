import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/models/group.dart';
import 'package:keylol_api/models/medal.dart';
import 'package:keylol_api/models/privacy.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'space.g.dart';

@customJsonSerializable
class Space {
  @JsonKey(name: 'uid')
  final String uid;

  @JsonKey(name: 'username')
  final String username;

  @JsonKey(name: 'status')
  final int status;

  @JsonKey(name: 'emailstatus')
  final int emailStatus;

  @JsonKey(name: 'avatarstatus')
  final int avatarStatus;

  @JsonKey(name: 'videophotostatus')
  final int videoPhotoStatus;

  @JsonKey(name: 'adminid')
  final String adminId;

  @JsonKey(name: 'groupid')
  final String groupId;

  @JsonKey(name: 'groupexpiry')
  final String groupExpiry;

  @JsonKey(name: 'extgroupids')
  final String extGroupIds;

  @JsonKey(name: 'regdate')
  final String regDate;

  @JsonKey(name: 'credits')
  final int credits;

  @JsonKey(name: 'notifysound')
  final String notifySound;

  @JsonKey(name: 'timeoffset')
  final int timeOffset;

  @JsonKey(name: 'newpm')
  final int newPm;

  @JsonKey(name: 'newprompt')
  final int newPrompt;

  @JsonKey(name: 'accessmasks')
  final int accessMasks;

  @JsonKey(name: 'allowadmincp')
  final String allowAdminCp;

  @JsonKey(name: 'onlyacceptfriendpm')
  final bool onlyAcceptFriendPm;

  @JsonKey(name: 'conisbind')
  final String conisbind;

  @JsonKey(name: 'freeze')
  final String freeze;

  @JsonKey(name: 'self')
  final String self;

  @JsonKey(name: 'extcredits1')
  final int extCredits1;

  @JsonKey(name: 'extcredits2')
  final int extCredits2;

  @JsonKey(name: 'extcredits3')
  final int extCredits3;

  @JsonKey(name: 'extcredits4')
  final int extCredits4;

  @JsonKey(name: 'extcredits5')
  final int extCredits5;

  @JsonKey(name: 'extcredits6')
  final int extCredits6;

  @JsonKey(name: 'extcredits7')
  final int extCredits7;

  @JsonKey(name: 'extcredits8')
  final int extCredits8;

  @JsonKey(name: 'friends')
  final int friends;

  @JsonKey(name: 'threads')
  final int threads;

  @JsonKey(name: 'digestPosts')
  final int digestPosts;

  @JsonKey(name: 'doings')
  final int doings;

  @JsonKey(name: 'blogs')
  final int blogs;

  @JsonKey(name: 'albums')
  final int albums;

  @JsonKey(name: 'sharing')
  final int sharings;

  @JsonKey(name: 'attachsize')
  final String attachSize;

  @JsonKey(name: 'views')
  final int views;

  @JsonKey(name: 'oltime')
  final String olTime;

  @JsonKey(name: 'todayattachs')
  final int todayAttachs;

  @JsonKey(name: 'todayattachsize')
  final String todayAttachSize;

  @JsonKey(name: 'feeds')
  final int feeds;

  @JsonKey(name: 'follower')
  final int follower;

  @JsonKey(name: 'following')
  final int following;

  @JsonKey(name: 'newfollower')
  final int newFollower;

  @JsonKey(name: 'blacklist')
  final int blacklist;

  @JsonKey(name: 'videophoto')
  final String videoPhoto;

  @JsonKey(name: 'spacename')
  final String spaceName;

  @JsonKey(name: 'spacedescription')
  final String sapceDescription;

  @JsonKey(name: 'domain')
  final String domain;

  @JsonKey(name: 'addsize')
  final String addSize;

  @JsonKey(name: 'addfriend')
  final String addFriend;

  @JsonKey(name: 'menunum')
  final String menunum;

  @JsonKey(name: 'theme')
  final String theme;

  @JsonKey(name: 'spacecss')
  final String spaceCss;

  @JsonKey(name: 'blockposition')
  final String blockPosition;

  @JsonKey(name: 'recentnote')
  final String recentNote;

  @JsonKey(name: 'privacy')
  final Privacy privacy;

  @JsonKey(name: 'feedfriend')
  final String feedFriend;

  @JsonKey(name: 'acceptemail')
  final List<String> acceptEmail;

  @JsonKey(name: 'magicgift')
  final String magicGift;

  @JsonKey(name: 'stickblogs')
  final String stickBlogs;

  @JsonKey(name: 'publishfeed')
  final int publishFeed;

  @JsonKey(name: 'customShow')
  final int customShow;

  @JsonKey(name: 'customStatus')
  final String customStatus;

  @JsonKey(name: 'medals')
  final List<Medal> medals;

  @JsonKey(name: 'signhtml')
  final String signHtml;

  @JsonKey(name: 'groupterms')
  final String groupTerms;

  @JsonKey(name: 'authstr')
  final String authStr;

  @JsonKey(name: 'groups')
  final String groups;

  @JsonKey(name: 'attentiongroup')
  final String attentionGroup;

  @JsonKey(name: 'gender')
  final int gender;

  @JsonKey(name: 'birthyear')
  final int birthYear;

  @JsonKey(name: 'birthmonth')
  final int brithMonth;

  @JsonKey(name: 'birthday')
  final int birthday;

  @JsonKey(name: 'consellation')
  final String consellation;

  @JsonKey(name: 'zodiac')
  final String zodiac;

  @JsonKey(name: 'nationality')
  final String nationality;

  @JsonKey(name: 'birthprovince')
  final String birthProvince;

  @JsonKey(name: 'birthcity')
  final String birthCity;

  @JsonKey(name: 'birthdist')
  final String birthDist;

  @JsonKey(name: 'birthcommunity')
  final String birthCommunity;

  @JsonKey(name: 'resideprovince')
  final String resideProvince;

  @JsonKey(name: 'residecity')
  final String resideCity;

  @JsonKey(name: 'residecommunity')
  final String resideCommunity;

  @JsonKey(name: 'residesuite')
  final String resideSuite;

  @JsonKey(name: 'graduateschool')
  final String graduateSchool;

  @JsonKey(name: 'company')
  final String company;

  @JsonKey(name: 'education')
  final String education;

  @JsonKey(name: 'occupation')
  final String occupation;

  @JsonKey(name: 'position')
  final String position;

  @JsonKey(name: 'revenue')
  final String revenue;

  @JsonKey(name: 'affectiveStatus')
  final String affectiveStatus;

  @JsonKey(name: 'lookingfor')
  final String lookingFor;

  @JsonKey(name: 'bloodtype')
  final String bloodType;

  @JsonKey(name: 'height')
  final String height;

  @JsonKey(name: 'weight')
  final String weight;

  @JsonKey(name: 'site')
  final String site;

  @JsonKey(name: 'bio')
  final String bio;

  @JsonKey(name: 'interest')
  final String interest;

  @JsonKey(name: 'field1')
  final String field1;

  @JsonKey(name: 'field2')
  final String field2;

  @JsonKey(name: 'field3')
  final String field3;

  @JsonKey(name: 'field4')
  final String field4;

  @JsonKey(name: 'field5')
  final String field5;

  @JsonKey(name: 'field6')
  final String field6;

  @JsonKey(name: 'field7')
  final String field7;

  @JsonKey(name: 'field8')
  final String field8;

  @JsonKey(name: 'regport')
  final String regPort;

  @JsonKey(name: 'port')
  final String port;

  @JsonKey(name: 'lastvisit')
  final String lastVisit;

  @JsonKey(name: 'lastactivity')
  final String lastActivity;

  @JsonKey(name: 'lastpost')
  final String lastPost;

  @JsonKey(name: 'lastsendemail')
  final String lastSendEmail;

  @JsonKey(name: 'invisible')
  final String invisible;

  @JsonKey(name: 'buyercredit')
  final String buyerCredit;

  @JsonKey(name: 'sellerCredit')
  final String sellerCredit;

  @JsonKey(name: 'favtimes')
  final String favTimes;

  @JsonKey(name: 'sharetimes')
  final String shareTimes;

  @JsonKey(name: 'profileprogress')
  final String profileProgress;

  @JsonKey(name: 'admingroup')
  final Group adminGroup;

  @JsonKey(name: 'group')
  final Group group;

  @JsonKey(name: 'lastactivitydb')
  final String lastActivityDb;

  @JsonKey(name: 'lastip_loc_province')
  final String lastIpLocProvince;

  @JsonKey(name: 'buyerrank')
  final String buyerRank;

  @JsonKey(name: 'sellerrank')
  final String sellerRank;

  @JsonKey(name: 'groupiconid')
  final String groupIconId;

  Space(
      this.uid,
      this.username,
      this.status,
      this.emailStatus,
      this.avatarStatus,
      this.videoPhotoStatus,
      this.adminId,
      this.groupId,
      this.groupExpiry,
      this.extGroupIds,
      this.regDate,
      this.credits,
      this.notifySound,
      this.timeOffset,
      this.newPm,
      this.newPrompt,
      this.accessMasks,
      this.allowAdminCp,
      this.onlyAcceptFriendPm,
      this.conisbind,
      this.freeze,
      this.self,
      this.extCredits1,
      this.extCredits2,
      this.extCredits3,
      this.extCredits4,
      this.extCredits5,
      this.extCredits6,
      this.extCredits7,
      this.extCredits8,
      this.friends,
      this.threads,
      this.digestPosts,
      this.doings,
      this.blogs,
      this.albums,
      this.sharings,
      this.attachSize,
      this.views,
      this.olTime,
      this.todayAttachs,
      this.todayAttachSize,
      this.feeds,
      this.follower,
      this.following,
      this.newFollower,
      this.blacklist,
      this.videoPhoto,
      this.spaceName,
      this.sapceDescription,
      this.domain,
      this.addSize,
      this.addFriend,
      this.menunum,
      this.theme,
      this.spaceCss,
      this.blockPosition,
      this.recentNote,
      this.privacy,
      this.feedFriend,
      this.acceptEmail,
      this.magicGift,
      this.stickBlogs,
      this.publishFeed,
      this.customShow,
      this.customStatus,
      this.medals,
      this.signHtml,
      this.groupTerms,
      this.authStr,
      this.groups,
      this.attentionGroup,
      this.gender,
      this.birthYear,
      this.brithMonth,
      this.birthday,
      this.consellation,
      this.zodiac,
      this.nationality,
      this.birthProvince,
      this.birthCity,
      this.birthDist,
      this.birthCommunity,
      this.resideProvince,
      this.resideCity,
      this.resideCommunity,
      this.resideSuite,
      this.graduateSchool,
      this.company,
      this.education,
      this.occupation,
      this.position,
      this.revenue,
      this.affectiveStatus,
      this.lookingFor,
      this.bloodType,
      this.height,
      this.weight,
      this.site,
      this.bio,
      this.interest,
      this.field1,
      this.field2,
      this.field3,
      this.field4,
      this.field5,
      this.field6,
      this.field7,
      this.field8,
      this.regPort,
      this.port,
      this.lastVisit,
      this.lastActivity,
      this.lastPost,
      this.lastSendEmail,
      this.invisible,
      this.buyerCredit,
      this.sellerCredit,
      this.favTimes,
      this.shareTimes,
      this.profileProgress,
      this.adminGroup,
      this.group,
      this.lastActivityDb,
      this.lastIpLocProvince,
      this.buyerRank,
      this.sellerRank,
      this.groupIconId);

  factory Space.fromJson(Map<String, dynamic> json) => _$SpaceFromJson(json);

  Map<String, dynamic> toJson() => _$SpaceToJson(this);
}
