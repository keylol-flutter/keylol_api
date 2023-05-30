// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_privacy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfilePrivacy _$ProfilePrivacyFromJson(Map<String, dynamic> json) =>
    ProfilePrivacy(
      const IntConverter().fromJson(json['realname']),
      const IntConverter().fromJson(json['gender']),
      const IntConverter().fromJson(json['birthday']),
      const IntConverter().fromJson(json['residecity']),
      const IntConverter().fromJson(json['affectivestatus']),
      const IntConverter().fromJson(json['lookingfor']),
      const IntConverter().fromJson(json['bloodtype']),
      const IntConverter().fromJson(json['education']),
      const IntConverter().fromJson(json['graduateSchool']),
      const IntConverter().fromJson(json['bio']),
      const IntConverter().fromJson(json['site']),
      const IntConverter().fromJson(json['idCard']),
      const IntConverter().fromJson(json['address']),
      const IntConverter().fromJson(json['zipcode']),
      const IntConverter().fromJson(json['interest']),
      const IntConverter().fromJson(json['idcardtype']),
    );

Map<String, dynamic> _$ProfilePrivacyToJson(ProfilePrivacy instance) =>
    <String, dynamic>{
      'realname': const IntConverter().toJson(instance.realName),
      'gender': const IntConverter().toJson(instance.gender),
      'birthday': const IntConverter().toJson(instance.birthday),
      'residecity': const IntConverter().toJson(instance.resideCity),
      'affectivestatus': const IntConverter().toJson(instance.affectiveStatus),
      'lookingfor': const IntConverter().toJson(instance.lookingFor),
      'bloodtype': const IntConverter().toJson(instance.bloodType),
      'education': const IntConverter().toJson(instance.education),
      'graduateSchool': const IntConverter().toJson(instance.graduateSchool),
      'bio': const IntConverter().toJson(instance.bio),
      'site': const IntConverter().toJson(instance.site),
      'idCard': const IntConverter().toJson(instance.idCard),
      'address': const IntConverter().toJson(instance.address),
      'zipcode': const IntConverter().toJson(instance.zipCode),
      'interest': const IntConverter().toJson(instance.interest),
      'idcardtype': const IntConverter().toJson(instance.idCardType),
    };
