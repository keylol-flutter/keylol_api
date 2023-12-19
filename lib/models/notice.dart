import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'notice.g.dart';

@customJsonSerializable
class Notice extends Equatable {
  @JsonKey(name: 'newpush')
  final int newPush;

  @JsonKey(name: 'newpm')
  final int newPm;

  @JsonKey(name: 'newprompt')
  final int newPrompt;

  @JsonKey(name: 'newmypost')
  final int newMyPost;

  const Notice(this.newPush, this.newPm, this.newPrompt, this.newMyPost);

  factory Notice.fromJson(Map<String, dynamic> json) => _$NoticeFromJson(json);

  Map<String, dynamic> toJson() => _$NoticeToJson(this);

  @override
  List<Object?> get props => [newPush, newPm, newPrompt, newMyPost];
}
