import 'package:json_annotation/json_annotation.dart';

part 'medal.g.dart';

@JsonSerializable()
class Medal {
  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'image')
  final String image;

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'medalid')
  final String medalId;

  Medal(this.name, this.image, this.description, this.medalId);

  factory Medal.fromJson(Map<String, dynamic> json) => _$MedalFromJson(json);

  Map<String, dynamic> toJson() => _$MedalToJson(this);
}
