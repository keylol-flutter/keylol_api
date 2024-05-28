// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Index _$IndexFromJson(Map<String, dynamic> json) => Index(
      (json['slideViewThreads'] as List<dynamic>)
          .map((e) => Thread.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['tabThreadMap'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => Thread.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
    );

Map<String, dynamic> _$IndexToJson(Index instance) => <String, dynamic>{
      'slideViewThreads': instance.slideViewThreads,
      'tabThreadMap': instance.tabThreadMap
          .map((k, e) => MapEntry(const StringConverter().toJson(k), e)),
    };
