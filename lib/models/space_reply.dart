import 'package:html/dom.dart';
import 'package:keylol_api/models/reply.dart';

class SpaceReply {
  final List<Reply> list;

  SpaceReply(this.list);

  factory SpaceReply.fromDocument(Document document) {
    final tl = document.getElementsByClassName('tl')[0];
    final trs = tl.getElementsByTagName('tr');

    final List<Reply> list = [];
    for (var i = 1; i < trs.length;) {
      final thread = trs[i++];

      // 帖子
      final threadThA =
          thread.getElementsByTagName('th')[0].getElementsByTagName('a')[0];

      late String tid;
      threadThA.attributes['href']!
          .split('?')[1]
          .split('&')
          .forEach((attribute) {
        if (attribute.startsWith('ptid')) {
          tid = attribute.replaceFirst('ptid=', '');
          return;
        }
      });
      final subject = threadThA.text;

      do {
        final tr = trs[i];
        if (tr.attributes['class'] != null) {
          break;
        }

        final trA = tr.getElementsByTagName('a')[0];

        late String pid;
        trA.attributes['href']!.split('?')[1].split('&').forEach((attribute) {
          if (attribute.startsWith('pid')) {
            pid = attribute.replaceFirst('pid=', '');
            return;
          }
        });

        String message = trA.text;

        list.add(Reply(tid, pid, subject, message));

        i++;
      } while (i < trs.length);
    }
    return SpaceReply(list);
  }
}
