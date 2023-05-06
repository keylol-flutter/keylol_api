import 'package:json_annotation/json_annotation.dart';

part 'message.g.dart';

@JsonSerializable()
class Message {
  @JsonKey(name: 'messagestr')
  final String messageStr;

  @JsonKey(name: 'messageval')
  final String messageVal;

  Message(this.messageStr, this.messageVal);

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
