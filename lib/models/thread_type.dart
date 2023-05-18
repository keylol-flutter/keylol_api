import 'package:json_annotation/json_annotation.dart';

part 'thread_type.g.dart';

@JsonSerializable()
class ThreadType {
  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'icon')
  final String icon;

  ThreadType(this.type, this.name, this.icon);

  factory ThreadType.fromJson(Map<String, dynamic> json) =>
      _$ThreadTypeFromJson(json);

  Map<String, dynamic> toJson() => _$ThreadTypeToJson(this);
}
