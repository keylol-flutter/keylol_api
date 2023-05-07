// 邮箱保护解码
String emailDecode(String str) {
  final r = int.parse('0x${str.substring(0, 2)}') | 0;
  var e = '';
  for (var n = 2; str.length - n > 0; n += 2) {
    final temp =
        ('0${(int.parse('0x${str.substring(n, n + 2)}') ^ r).toRadixString(16)}');
    e += '%${temp.substring(temp.length - 2)}';
  }

  return Uri.decodeComponent(e);
}
