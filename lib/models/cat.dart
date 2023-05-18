import 'package:json_annotation/json_annotation.dart';

part 'cat.g.dart';

@JsonSerializable()
class Cat {
  @JsonKey(name: 'fid')
  final String fid;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'forums')
  final List<String> forums;

  Cat(this.fid, this.name, this.forums);

  factory Cat.fromJson(Map<String, dynamic> json) => _$CatFromJson(json);

  Map<String, dynamic> toJson() => _$CatToJson(this);
}
