import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'allow_upload.g.dart';

@JsonSerializable()
class AllowUpload {
  @JsonKey(name: 'jpg', fromJson: stringToInt, toJson: stringFromInt)
  final int jpg;

  @JsonKey(name: 'jpeg', fromJson: stringToInt, toJson: stringFromInt)
  final int jpeg;

  @JsonKey(name: 'gif', fromJson: stringToInt, toJson: stringFromInt)
  final int gif;

  @JsonKey(name: 'png', fromJson: stringToInt, toJson: stringFromInt)
  final int png;

  @JsonKey(name: 'mp3', fromJson: stringToInt, toJson: stringFromInt)
  final int mp3;

  @JsonKey(name: 'txt', fromJson: stringToInt, toJson: stringFromInt)
  final int txt;

  @JsonKey(name: 'zip', fromJson: stringToInt, toJson: stringFromInt)
  final int zip;

  @JsonKey(name: 'rar', fromJson: stringToInt, toJson: stringFromInt)
  final int rar;

  @JsonKey(name: 'pdf', fromJson: stringToInt, toJson: stringFromInt)
  final int pdf;

  AllowUpload(this.jpg, this.jpeg, this.gif, this.png, this.mp3, this.txt,
      this.zip, this.rar, this.pdf);

  factory AllowUpload.fromJson(Map<String, dynamic> json) =>
      _$AllowUploadFromJson(json);

  Map<String, dynamic> toJson() => _$AllowUploadToJson(this);
}
