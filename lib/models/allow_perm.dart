import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/models/allow_upload.dart';
import 'package:keylol_api/utils/json_util.dart';

part 'allow_perm.g.dart';

@customJsonSerializable
class AllowPerm {
  @JsonKey(name: 'allowpost')
  final int allowPost;

  @JsonKey(name: 'allowreply')
  final int allowReply;

  @JsonKey(name: 'allowupload')
  final AllowUpload allowUpload;

  @JsonKey(name: 'uploadhash')
  final String uploadHash;

  AllowPerm(this.allowPost, this.allowReply, this.allowUpload, this.uploadHash);

  factory AllowPerm.fromJson(Map<String, dynamic> json) =>
      _$AllowPermFromJson(json);

  Map<String, dynamic> toJson() => _$AllowPermToJson(this);
}
