import 'package:html/dom.dart';
import 'package:keylol_api/models/thread.dart';
import 'package:keylol_api/utils/common_util.dart';

class Index {
  // 轮播图
  final List<Thread> slideViewThreads;

  // 帖子tab
  final Map<String, List<Thread>> tabThreadMap;

  Index(this.slideViewThreads, this.tabThreadMap);

  factory Index.fromDocument(Document document) {
    // 轮播图
    final portalContent = document.getElementById('portal_block_431_content')!;
    var slideShow = portalContent.getElementsByClassName('slideshow')[0];
    final slideViewThreads =
        slideShow.getElementsByTagName('li').map((slideShowItem) {
      final subject = slideShowItem.getElementsByClassName('title')[0].text;
      final content = slideShowItem.getElementsByTagName('a')[0];
      final tid = content.attributes['href']
          ?.replaceAll('https://keylol.com/', '')
          .split('-')[0]
          .replaceFirst('t', '');
      final cover = content.getElementsByTagName('img')[0].attributes['src'];
      return Thread.fromJson({
        'tid': tid,
        'subject': subject,
        'cover': cover,
      });
    }).toList();

    // tab 列表
    final tabThreadMap = <String, List<Thread>>{};
    final tab = document.getElementById('tabPAhn0P_title')!;
    final tabTitles = tab.nodes;
    for (var tabTitle in tabTitles) {
      var titleId = tabTitle.attributes['id']!;
      var content = document.getElementById('${titleId}_content')!;
      var items = content.getElementsByTagName('li');

      final tabThreads = items.map((item) {
        final aTags = item.getElementsByTagName('a');
        final authorHref = aTags[0];
        final authorId = authorHref.attributes['href']!.split('-')[1];

        final tInfo = aTags[aTags.length - 1];
        final tid =
            tInfo.attributes['href']!.replaceFirst('t', '').split('-')[0];
        var fonts = tInfo.getElementsByTagName('font');
        String title;
        if (tInfo.innerHtml.contains('data-yjshash')) {
          final span = tInfo.getElementsByClassName('__yjs_email__')[0];
          final encodeStr = span.attributes['data-yjsemail']!;
          title = emailDecode(encodeStr);
        } else if (fonts.isEmpty) {
          title = tInfo.text;
        } else {
          title = fonts[0].text;
        }
        final titleInfo = tInfo.attributes['title']!.split('\n')[1].split(' ');
        final author = titleInfo[1];
        final dateline = titleInfo[2].substring(1, titleInfo[2].length - 1);

        return Thread.fromJson({
          'tid': tid,
          'subject': title,
          'dateline': dateline,
          'authorid': authorId,
          'author': author
        });
      }).toList();

      var name = (tabTitle as Element)
          .getElementsByClassName('blocktitle')[0]
          .getElementsByTagName('a')[0]
          .text;
      tabThreadMap[name] = tabThreads;
    }

    return Index(slideViewThreads, tabThreadMap);
  }
}
