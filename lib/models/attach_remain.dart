import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'attach_remain.g.dart';

@JsonSerializable()
class AttachRemain {
  @JsonKey(name: 'size', fromJson: stringToInt, toJson: stringFromInt)
  final int size;

  @JsonKey(name: 'count', fromJson: stringToInt, toJson: stringFromInt)
  final int count;

  AttachRemain(this.size, this.count);

  factory AttachRemain.fromJson(Map<String, dynamic> json) =>
      _$AttachRemainFromJson(json);

  Map<String, dynamic> toJson() => _$AttachRemainToJson(this);
}
