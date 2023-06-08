import 'package:html/dom.dart';
import 'package:keylol_api/models/thread.dart';
import 'package:keylol_api/utils/common_util.dart';

class Guide {
  final List<Thread> list;

  final int count;

  Guide(this.list, this.count);

  factory Guide.fromDocument(Document document) {
    final bmCs = document.getElementsByClassName('bm_c');

    late Element table;
    for (final bmC in bmCs) {
      final tables = bmC.getElementsByTagName('table');
      if (tables.isNotEmpty) {
        table = tables[0];
        break;
      }
    }

    final List<Thread> list = [];
    final tbodys = table.getElementsByTagName('tbody');
    for (final tbody in tbodys) {
      if (tbody.text == '暂时还没有帖子') {
        continue;
      }

      // 帖子
      final common = tbody.getElementsByClassName('common')[0];
      final commonAs = common.getElementsByTagName('a');
      var commonA = commonAs[0];
      if (commonA.getElementsByTagName('img').isNotEmpty) {
        commonA = commonAs[1];
      }

      final tid =
          commonA.attributes['href']!.split('-')[0].replaceFirst('t', '');
      final subject = commonA.text;
      // TODO 【蒸拍】鬼灭之刃 [email protected]/* <![CDATA[ */!function(t,e,r,n,c,a,p,m,o){try{t=document.currentScript||function(){for(t=document.getElementsByTagName('script'),e=t.length;e--;)if(t[e].getAttribute('data-yjshash'))return t[e]}();if(t&&(c=t.previousSibling)){p=t.parentNode;if(a=c.getAttribute('data-yjsemail')){for(e='',o=0,r='0x'+a.substr(0,2)|0,n=2;a.length-n;n+=2){m=('0'+('0x'+a.substr(n,2)^r).toString(16)).slice(-2);if((a.length-n)<=6&&a.length>=128)o=(parseInt(m)<=191)?1:o*2;if(o>1)break;e+='%'+m;}p.replaceChild(document.createTextNode(decodeURIComponent(e)),c)}p.removeChild(t)}}catch(u){}}()/* ]]> */

      // 版块
      final by1 = tbody.getElementsByClassName('by')[0];
      final by1A = by1.getElementsByTagName('a')[0];

      final fid = by1A.attributes['href']!.split('-')[0].replaceFirst('f', '');

      // 作者
      final by2 = tbody.getElementsByClassName('by')[1];
      final by2A = by2.getElementsByTagName('a')[0];
      Element lastSpan = by2.getElementsByTagName('span')[0];

      final authorId = by2A.attributes['href']!.split('-')[1];
      late String author;
      if (lastSpan.attributes['data-yjsemail'] != null) {
        author = emailDecode(lastSpan.attributes['data-yjsemail']!);
        lastSpan = by2.getElementsByTagName('span')[1];
      } else {
        author = by2A.text;
      }

      late String dateline;
      if (lastSpan.getElementsByTagName('span').isEmpty) {
        dateline = lastSpan.text;
      } else {
        dateline = lastSpan.getElementsByTagName('span')[0].text;
      }

      // 统计
      final num = tbody.getElementsByClassName('num')[0];
      final numA = num.getElementsByTagName('a')[0];
      final numEm = num.getElementsByTagName('em')[0];

      final views = numA.text;
      final replies = numEm.text;

      list.add(Thread.fromJson({
        'tid': tid,
        'fid': fid,
        'author': author,
        'authorid': authorId,
        'subject': subject,
        'dateline': dateline,
        'views': views,
        'replies': replies
      }));
    }

    int? count;
    final labels = document.getElementsByTagName('label');
    for (final label in labels) {
      final spans = label.getElementsByTagName('span');
      if (spans.isNotEmpty) {
        final span = spans[0];
        final title = span.attributes['title']!;
        count =
            int.parse(title.replaceFirst('共', '').replaceFirst('页', '').trim());
        break;
      }
    }

    return Guide(list, count ?? 0);
  }
}
