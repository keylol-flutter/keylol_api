import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'attach_remain.g.dart';

@customJsonSerializable
class AttachRemain {
  @JsonKey(name: 'size')
  final int size;

  @JsonKey(name: 'count')
  final int count;

  AttachRemain(this.size, this.count);

  factory AttachRemain.fromJson(Map<String, dynamic> json) =>
      _$AttachRemainFromJson(json);

  Map<String, dynamic> toJson() => _$AttachRemainToJson(this);
}
