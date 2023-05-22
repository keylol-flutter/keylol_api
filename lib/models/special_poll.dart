import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/models/poll_option.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'special_poll.g.dart';

@JsonSerializable()
class SpecialPoll {
  @JsonKey(name: 'polloptions', fromJson: pollOptionsFromList)
  final List<PollOption> pollOptions;

  @JsonKey(name: 'expirations', fromJson: stringToInt, toJson: stringFromInt)
  final int expirations;

  @JsonKey(name: 'multiple')
  final String multiple;

  @JsonKey(name: 'maxchoices', fromJson: stringToInt, toJson: stringFromInt)
  final int maxChoices;

  @JsonKey(name: 'voterscount', fromJson: stringToInt, toJson: stringFromInt)
  final int votersCount;

  @JsonKey(name: 'visiblepoll', fromJson: stringToInt, toJson: stringFromInt)
  final int visiblePoll;

  @JsonKey(name: 'allowvote', fromJson: stringToBool, toJson: stringFromBool)
  final bool allowVote;

  SpecialPoll(this.pollOptions, this.expirations, this.multiple,
      this.maxChoices, this.votersCount, this.visiblePoll, this.allowVote);

  factory SpecialPoll.fromJson(Map<String, dynamic> json) =>
      _$SpecialPollFromJson(json);

  Map<String, dynamic> toJson() => _$SpecialPollToJson(this);

  static List<PollOption> pollOptionsFromList(Map<String, dynamic> json) {
    final List<PollOption> pollOptions = [];
    for (var i = 1; i <= json.keys.length; i++) {
      final Map<String, dynamic> pollOption = json['$i'];
      pollOptions.add(PollOption.fromJson(pollOption));
    }
    return pollOptions;
  }
}
