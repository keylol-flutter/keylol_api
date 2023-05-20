import 'package:flutter/material.dart';

int stringToInt(String number) => int.parse(number);

String stringFromInt(int number) => number.toString();

double stringToDouble(String number) => double.parse(number);

String stringFromDouble(double number) => number.toString();

bool stringToBool(String boolean) => boolean == '1';

String stringFromBool(bool boolean) => boolean ? '1' : '0';

Color stringToColor(String color) {
  final radix = RegExp(r'#([a-z0-9]{6})').firstMatch(color)!.group(1);
  return Color(int.parse('ff$radix', radix: 16));
}

String stringFromColor(Color color) {
  return color.value.toString();
}
