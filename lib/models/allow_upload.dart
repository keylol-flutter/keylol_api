import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'allow_upload.g.dart';

@customJsonSerializable
class AllowUpload {
  @JsonKey(name: 'jpg')
  final int jpg;

  @JsonKey(name: 'jpeg')
  final int jpeg;

  @JsonKey(name: 'gif')
  final int gif;

  @JsonKey(name: 'png')
  final int png;

  @JsonKey(name: 'mp3')
  final int mp3;

  @JsonKey(name: 'txt')
  final int txt;

  @JsonKey(name: 'zip')
  final int zip;

  @JsonKey(name: 'rar')
  final int rar;

  @JsonKey(name: 'pdf')
  final int pdf;

  AllowUpload(this.jpg, this.jpeg, this.gif, this.png, this.mp3, this.txt,
      this.zip, this.rar, this.pdf);

  factory AllowUpload.fromJson(Map<String, dynamic> json) =>
      _$AllowUploadFromJson(json);

  Map<String, dynamic> toJson() => _$AllowUploadToJson(this);
}
