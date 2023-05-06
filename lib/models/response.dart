import 'package:json_annotation/json_annotation.dart';

import 'message.dart';

part 'response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class Response<T> {
  @JsonKey(name: 'Charset')
  final String charset;

  @JsonKey(name: 'Variables')
  final T variables;

  @JsonKey(name: 'Message')
  final Message message;

  @JsonKey(name: 'Version')
  final String version;

  Response(this.charset, this.variables, this.message, this.version);

  factory Response.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$ResponseToJson(this, toJsonT);
}
