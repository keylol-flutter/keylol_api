// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponse<T> _$ApiResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ApiResponse<T>(
      const StringConverter().fromJson(json['Charset']),
      fromJsonT(json['Variables']),
      json['Message'] == null
          ? null
          : Message.fromJson(json['Message'] as Map<String, dynamic>),
      const StringConverter().fromJson(json['Version']),
    );

Map<String, dynamic> _$ApiResponseToJson<T>(
  ApiResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'Charset': const StringConverter().toJson(instance.charset),
      'Variables': toJsonT(instance.variables),
      'Message': instance.message,
      'Version': const StringConverter().toJson(instance.version),
    };
