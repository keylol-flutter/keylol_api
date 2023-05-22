import 'package:html/dom.dart';
import 'package:keylol_api/models/thread.dart';

class SpaceThread {
  final List<Thread> list;

  SpaceThread(this.list);

  factory SpaceThread.fromDocument(Document document) {
    final tl = document.getElementsByClassName('tl')[0];
    final trs = tl.getElementsByTagName('tr');

    final List<Thread> list = [];
    for (final tr in trs) {
      final clazz = tr.attributes['class'];
      if (clazz == 'th') {
        continue;
      }
      if (tr.innerHtml.contains('还没有相关的帖子')) {
        continue;
      }

      // 帖子
      final thA = tr.getElementsByTagName('th')[0].getElementsByTagName('a')[0];

      final tid = thA.attributes['href']!.split('-')[0].replaceFirst('t', '');
      final subject = thA.text;

      final tds = tr.getElementsByTagName('td');

      // 版块
      final td2A = tds[1].getElementsByTagName('a')[0];

      final fid = td2A.attributes['href']!.split('-')[0].replaceFirst('f', '');

      // 统计
      final replies = tds[2].getElementsByTagName('a')[0].text;
      final views = tds[2].getElementsByTagName('em')[0].text;

      list.add(Thread.fromJson({
        'fid': fid,
        'tid': tid,
        'subject': subject,
        'replies': replies,
        'views': views
      }));
    }
    return SpaceThread(list);
  }
}
