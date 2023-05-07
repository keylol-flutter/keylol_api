import 'dart:math';

import 'package:html/dom.dart';

class LoginParam {
  late final String auth;

  late final String loginHash;

  late final String update;

  late final String formHash;

  late String idHash;

  LoginParam._internal();

  factory LoginParam.fromDocument(Document document) {
    final refreshButton = document.getElementsByClassName('sec_button')[0];
    final onClickExp = refreshButton.attributes['onclick']!;
    final splits = onClickExp.split(' ');
    final updateSecCodeExp = splits[splits.length - 1];

    final loginHash = updateSecCodeExp.substring(23, 28);
    final update = updateSecCodeExp.substring(31, 36);

    late String formHash;
    final inputs = document.getElementsByTagName('input');
    for (final input in inputs) {
      if (input.attributes['name'] == 'formhash') {
        formHash = input.attributes['value']!;
        break;
      }
    }

    final secCodeParam = LoginParam._internal();
    secCodeParam.loginHash = loginHash;
    secCodeParam.update = update;
    secCodeParam.formHash = formHash;
    secCodeParam.genIdHash();
    return secCodeParam;
  }

  void genIdHash() {
    final random = Random();
    final randomSeed = (random.nextDouble() * 1000).floor();
    idHash = 'S$randomSeed';
  }
}
