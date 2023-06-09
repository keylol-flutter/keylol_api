import 'package:json_annotation/json_annotation.dart';
import 'package:keylol_api/models/variables.dart';
import 'package:keylol_api/utils/json_util.dart';

import 'message.dart';

part 'api_response.g.dart';

@customJsonSerializable
class ApiResponse<T> {
  @JsonKey(name: 'Charset')
  final String charset;

  @JsonKey(name: 'Variables')
  final T variables;

  @JsonKey(name: 'Message')
  final Message? message;

  @JsonKey(name: 'Version')
  final String version;

  ApiResponse(this.charset, this.variables, this.message, this.version);

  static ApiResponse<DefaultVariables> empty(Map<String, dynamic> json) {
    return ApiResponse.fromJson({
      'json': json,
      'fromJsonT': (json) =>
          DefaultVariables.fromJson(json as Map<String, dynamic>)
    });
  }

  factory ApiResponse.fromJson(Map<String, dynamic> params) =>
      _$ApiResponseFromJson(params['json'] as Map<String, dynamic>, (json) {
        if (json is Map<String, dynamic>) {
          return (params['fromJsonT'] as T Function(Map<String, dynamic> json))
              .call(json);
        }
        return json as T;
      });

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$ApiResponseToJson(this, toJsonT);
}
