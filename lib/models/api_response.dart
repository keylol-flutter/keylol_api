import 'package:json_annotation/json_annotation.dart';

import 'message.dart';

part 'api_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ApiResponse<T> {
  @JsonKey(name: 'Charset')
  final String charset;

  @JsonKey(name: 'Variables')
  final T variables;

  @JsonKey(name: 'Message')
  final Message message;

  @JsonKey(name: 'Version')
  final String version;

  ApiResponse(this.charset, this.variables, this.message, this.version);

  static ApiResponse<dynamic> empty(dynamic json) {
    return ApiResponse.fromJson(json, (json) => null);
  }

  factory ApiResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ApiResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$ApiResponseToJson(this, toJsonT);
}
