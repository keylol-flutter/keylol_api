// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Response<T> _$ResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    Response<T>(
      json['Charset'] as String,
      fromJsonT(json['Variables']),
      Message.fromJson(json['Message'] as Map<String, dynamic>),
      json['Version'] as String,
    );

Map<String, dynamic> _$ResponseToJson<T>(
  Response<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'Charset': instance.charset,
      'Variables': toJsonT(instance.variables),
      'Message': instance.message,
      'Version': instance.version,
    };
