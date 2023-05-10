import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'notice.g.dart';

@JsonSerializable()
class Notice {
  @JsonKey(name: 'newpush', fromJson: stringToInt, toJson: stringFromInt)
  final int newPush;

  @JsonKey(name: 'newpm', fromJson: stringToInt, toJson: stringFromInt)
  final int newPm;

  @JsonKey(name: 'newprompt', fromJson: stringToInt, toJson: stringFromInt)
  final int newPrompt;

  @JsonKey(name: 'newmypost', fromJson: stringToInt, toJson: stringFromInt)
  final int newMyPost;

  Notice(this.newPush, this.newPm, this.newPrompt, this.newMyPost);

  factory Notice.fromJson(Map<String, dynamic> json) => _$NoticeFromJson(json);

  Map<String, dynamic> toJson() => _$NoticeToJson(this);
}
