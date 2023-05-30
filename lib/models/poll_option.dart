import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'poll_option.g.dart';

@customJsonSerializable
class PollOption {
  @JsonKey(name: 'polloptionid')
  final String pollOptionId;

  @JsonKey(name: 'polloption')
  final String pollOption;

  @JsonKey(name: 'votes')
  final int votes;

  @JsonKey(name: 'width')
  final String width;

  @JsonKey(name: 'percent')
  final double percent;

  @JsonKey(name: 'color')
  final String color;

  PollOption(this.pollOptionId, this.pollOption, this.votes, this.width,
      this.percent, this.color);

  factory PollOption.fromJson(Map<String, dynamic> json) =>
      _$PollOptionFromJson(json);

  Map<String, dynamic> toJson() => _$PollOptionToJson(this);
}
