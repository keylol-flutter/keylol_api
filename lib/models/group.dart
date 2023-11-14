import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'group.g.dart';

@customJsonSerializable
class Group {
  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'grouptitle')
  final String groupTitle;

  @JsonKey(name: 'stars')
  final int stars;

  @JsonKey(name: 'color')
  final Color? color;

  @JsonKey(name: 'icon')
  final String icon;

  @JsonKey(name: 'readaccess')
  final String readAccess;

  @JsonKey(name: 'allowgetattach')
  final String allowGetAttach;

  @JsonKey(name: 'allowgetimage')
  final String allowGetImage;

  @JsonKey(name: 'allowmediacode')
  final String allowMediaCode;

  @JsonKey(name: 'maxsigsize')
  final String maxSigSize;

  @JsonKey(name: 'allowbegincode')
  final String allowBeginCode;

  @JsonKey(name: 'userstatusby')
  final String userStatusBy;

  Group(
      this.type,
      this.groupTitle,
      this.stars,
      this.color,
      this.icon,
      this.readAccess,
      this.allowGetAttach,
      this.allowGetImage,
      this.allowMediaCode,
      this.maxSigSize,
      this.allowBeginCode,
      this.userStatusBy);

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);

  Map<String, dynamic> toJson() => _$GroupToJson(this);
}
