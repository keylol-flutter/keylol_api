// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_privacy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfilePrivacy _$ProfilePrivacyFromJson(Map<String, dynamic> json) =>
    ProfilePrivacy(
      stringToInt(json['realname'] as String),
      stringToInt(json['gender'] as String),
      stringToInt(json['birthday'] as String),
      stringToInt(json['residecity'] as String),
      stringToInt(json['affectivestatus'] as String),
      stringToInt(json['lookingfor'] as String),
      stringToInt(json['bloodtype'] as String),
      stringToInt(json['education'] as String),
      stringToInt(json['graduateSchool'] as String),
      stringToInt(json['bio'] as String),
      stringToInt(json['site'] as String),
      stringToInt(json['idCard'] as String),
      stringToInt(json['address'] as String),
      stringToInt(json['zipcode'] as String),
      stringToInt(json['interest'] as String),
      stringToInt(json['idcardtype'] as String),
    );

Map<String, dynamic> _$ProfilePrivacyToJson(ProfilePrivacy instance) =>
    <String, dynamic>{
      'realname': stringFromInt(instance.realName),
      'gender': stringFromInt(instance.gender),
      'birthday': stringFromInt(instance.birthday),
      'residecity': stringFromInt(instance.resideCity),
      'affectivestatus': stringFromInt(instance.affectiveStatus),
      'lookingfor': stringFromInt(instance.lookingFor),
      'bloodtype': stringFromInt(instance.bloodType),
      'education': stringFromInt(instance.education),
      'graduateSchool': stringFromInt(instance.graduateSchool),
      'bio': stringFromInt(instance.bio),
      'site': stringFromInt(instance.site),
      'idCard': stringFromInt(instance.idCard),
      'address': stringFromInt(instance.address),
      'zipcode': stringFromInt(instance.zipCode),
      'interest': stringFromInt(instance.interest),
      'idcardtype': stringFromInt(instance.idCardType),
    };
