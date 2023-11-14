import 'package:flutter/material.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:json_annotation/json_annotation.dart';

final _unescape = HtmlUnescape();

Color stringToColor(String color) {
  final radix = RegExp(r'#([a-z0-9]{6})').firstMatch(color)!.group(1);
  return Color(int.parse('ff$radix', radix: 16));
}

String stringFromColor(Color color) {
  return color.value.toString();
}

class StringConverter extends JsonConverter<String, dynamic> {
  const StringConverter();

  @override
  String fromJson(json) =>
      json == null ? '' : _unescape.convert(json as String);

  @override
  toJson(String object) => object;
}

class IntConverter extends JsonConverter<int, dynamic> {
  const IntConverter();

  @override
  int fromJson(json) => json == null ? 0 : int.parse(json as String);

  @override
  toJson(int object) => object.toString();
}

class DoubleConverter extends JsonConverter<double, dynamic> {
  const DoubleConverter();

  @override
  double fromJson(json) => json == null ? 0.0 : double.parse(json as String);

  @override
  toJson(double object) => object.toString();
}

class BoolConverter extends JsonConverter<bool, dynamic> {
  const BoolConverter();

  @override
  bool fromJson(json) => json == '1' ? true : false;

  @override
  toJson(bool object) => object ? '1' : '0';
}

class ColorConverter extends JsonConverter<Color?, dynamic> {
  const ColorConverter();

  @override
  Color? fromJson(json) {
    if (json == null || json == '') {
      return null;
    }
    var radix = RegExp(r'#([a-z0-9]{6})').firstMatch(json as String)?.group(1);
    if (radix == null) {
      radix = RegExp(r'#([a-z0-9]{3})').firstMatch(json)?.group(1);
      if (radix == null) {
        return null;
      }
      radix =
          '${radix[0]}${radix[0]}${radix[1]}${radix[1]}${radix[2]}${radix[2]}';
    }
    return Color(int.parse('ff$radix', radix: 16));
  }

  @override
  toJson(Color? object) {
    if (object == null) {
      return null;
    }
    return object.value.toRadixString(16).toString();
  }
}

const customJsonSerializable = JsonSerializable(
  genericArgumentFactories: true,
  converters: [
    StringConverter(),
    IntConverter(),
    DoubleConverter(),
    BoolConverter(),
    ColorConverter(),
  ],
);
