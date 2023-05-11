import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:keylol_api/apis/rest_api.dart';
import 'package:keylol_api/keylol.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'rest_api_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  group('testPasswordLogin', () {
    final mockDio = MockDio();
    final client = Keylol(mockDio);

    test('should login success', () async {
      when(mockDio.post("/api/mobile/index.php",
              queryParameters: {
                'module': 'login',
                'action': 'login',
                'loginsubmit': 'yes',
              },
              data: isA<FormData>()))
          .thenAnswer((realInvocation) => Future.value(Response(
              statusCode: 200,
              data: {
                "Version": "1",
                "Charset": "UTF-8",
                "Variables": {
                  "cookiepre": "dz_2132_",
                  "auth": "",
                  "saltkey": "",
                  "member_uid": "273189",
                  "member_username": "cdgeass",
                  "member_avatar":
                      "https://keylol.com/uc_server/data/avatar/000/27/31/89_avatar_small.jpg?ts=1451966051",
                  "groupid": "35",
                  "formhash": "",
                  "ismoderator": null,
                  "readaccess": "50",
                  "notice": {
                    "newpush": "0",
                    "newpm": "0",
                    "newprompt": "0",
                    "newmypost": "0"
                  }
                },
                "Message": {
                  "messageval": "login_succeed",
                  "messagestr": "欢迎您回来，支柱会员 cdgeass，现在将转入登录前页面"
                }
              },
              requestOptions: RequestOptions(path: '/api/mobile/index.php'))));

      final resp = await client.loginWithPassword(
        username: 'username',
        password: 'password',
      );
      expect(resp.message?.messageVal, 'login_succeed');
    });

    test('should login fail', () async {
      when(mockDio.post("/api/mobile/index.php",
              queryParameters: {
                'module': 'login',
                'action': 'login',
                'loginsubmit': 'yes',
              },
              data: isA<FormData>()))
          .thenAnswer((realInvocation) => Future.value(Response(
              statusCode: 200,
              data: {
                "Version": "1",
                "Charset": "UTF-8",
                "Variables": {
                  "cookiepre": "dz_2132_",
                  "auth": null,
                  "saltkey": "",
                  "member_uid": "0",
                  "member_username": "",
                  "member_avatar":
                      "https://keylol.com/uc_server/data/avatar/000/00/00/00_avatar_small.jpg?ts=",
                  "groupid": "7",
                  "formhash": "",
                  "ismoderator": null,
                  "readaccess": "1",
                  "notice": {
                    "newpush": "0",
                    "newpm": "0",
                    "newprompt": "0",
                    "newmypost": "0"
                  }
                },
                "Message": {
                  "messageval": "login_invalid",
                  "messagestr": "登录失败，您还可以尝试 4 次"
                }
              },
              requestOptions: RequestOptions(path: '/api/mobile/index.php'))));

      final resp = await client.loginWithPassword(
        username: 'username',
        password: 'password',
      );
      expect(resp.message?.messageVal, 'login_invalid');
    });

    test('should return auth', () async {
      when(mockDio.post("/api/mobile/index.php",
              queryParameters: {
                'module': 'login',
                'action': 'login',
                'loginsubmit': 'yes',
              },
              data: isA<FormData>()))
          .thenAnswer((realInvocation) => Future.value(Response(
              statusCode: 200,
              data: {
                "Version": "1",
                "Charset": "UTF-8",
                "Variables": {
                  "cookiepre": "dz_2132_",
                  "auth": "",
                  "saltkey": "",
                  "member_uid": "273189",
                  "member_username": "cdgeass",
                  "member_avatar":
                      "https://keylol.com/uc_server/data/avatar/000/27/31/89_avatar_small.jpg?ts=1451966051",
                  "groupid": "35",
                  "formhash": "xxxxxxxx",
                  "ismoderator": null,
                  "readaccess": "50",
                  "notice": {
                    "newpush": "0",
                    "newpm": "0",
                    "newprompt": "0",
                    "newmypost": "0"
                  }
                },
                "Message": {
                  "messageval": "login_seccheck2",
                  "messagestr": "请输入验证码后继续登录"
                }
              },
              requestOptions: RequestOptions(path: '/api/mobile/index.php'))));

      final resp = await client.loginWithPassword(
        username: 'username',
        password: 'password',
      );
      expect(resp.message?.messageVal, 'login_seccheck2');
      expect(resp.variables.formHash, 'xxxxxxxx');
    });
  });

  group('testViewThread', () {
    final mockDio = MockDio();
    final client = Keylol(mockDio);

    test('should success wihout perm', () async {
      when(mockDio.get(
        '/api/mobile/index.php',
        queryParameters: {
          'version': null,
          'module': 'viewthread',
          'tid': '888430',
          'cp': 'all',
          'page': 1,
        },
      )).thenAnswer((realInvocation) => Future.value(Response(
            statusCode: 200,
            data: {
              "Version": "1",
              "Charset": "UTF-8",
              "Variables": {
                "cookiepre": "dz_2132_",
                "auth": null,
                "saltkey": "s7sCw966",
                "member_uid": "0",
                "member_username": "",
                "member_avatar":
                    "https://keylol.com/uc_server/data/avatar/000/00/00/00_avatar_small.jpg?ts=",
                "groupid": "7",
                "formhash": "b695a333",
                "ismoderator": "0",
                "readaccess": "1",
                "notice": {
                  "newpush": "0",
                  "newpm": "0",
                  "newprompt": "0",
                  "newmypost": "0"
                },
                "thread": {
                  "tid": "888430",
                  "fid": "322",
                  "posttableid": "0",
                  "typeid": "511",
                  "sortid": "0",
                  "readperm": "0",
                  "price": "0",
                  "author": "DUTess",
                  "authorid": "736735",
                  "subject": "暑期实习offer求推荐",
                  "dateline": "1683727232",
                  "lastpost": "2023-5-11 19:46",
                  "lastposter": "vanilltwiligh",
                  "views": "1169",
                  "replies": "34",
                  "displayorder": "0",
                  "highlight": "0",
                  "digest": "0",
                  "rate": "0",
                  "special": "1",
                  "attachment": "0",
                  "moderated": "1",
                  "closed": "0",
                  "stickreply": "0",
                  "recommends": "0",
                  "recommend_add": "0",
                  "recommend_sub": "0",
                  "heats": "21",
                  "status": "32",
                  "isgroup": "0",
                  "favtimes": "2",
                  "sharetimes": "0",
                  "stamp": "-1",
                  "icon": "-1",
                  "pushedaid": "0",
                  "cover": "0",
                  "replycredit": "0",
                  "relatebytag": "0",
                  "maxposition": "35",
                  "bgcolor": "",
                  "comments": "0",
                  "hidden": "0",
                  "linksubmit": "1",
                  "threadtable": "forum_thread",
                  "threadtableid": "0",
                  "posttable": "forum_post",
                  "addviews": "14",
                  "allreplies": "34",
                  "is_archived": "",
                  "archiveid": "0",
                  "subjectenc":
                      "%E6%9A%91%E6%9C%9F%E5%AE%9E%E4%B9%A0offer%E6%B1%82%E6%8E%A8%E8%8D%90",
                  "short_subject": "暑期实习offer求推荐"
                },
                "fid": "322",
                "postlist": [],
                "imagelist": [],
                "ppp": "15",
                "setting_rewriterule": {
                  "portal_topic": "top{name}",
                  "portal_article": "art{id}-{page}",
                  "forum_forumdisplay": "f{fid}-{page}",
                  "forum_viewthread": "t{tid}-{page}-{prevpage}",
                  "group_group": "gro{fid}-{page}",
                  "home_space": "s{user}-{value}",
                  "home_blog": "b{uid}-{blogid}",
                  "forum_archiver": "{action}-{value}.html",
                  "plugin": "{pluginid}-{module}.html"
                },
                "setting_rewritestatus": [
                  "portal_topic",
                  "portal_article",
                  "forum_forumdisplay",
                  "forum_viewthread",
                  "group_group",
                  "home_space",
                  "home_blog",
                  "forum_archiver",
                  "plugin"
                ],
                "forum_threadpay": null,
                "cache_custominfo_postno": ["楼", ""],
                "forum": {"password": "0"}
              },
              "Message": {
                "messageval": "forum_permforum_nopermission_custommsg//1",
                "messagestr": "浏览本版块需要初阶会员或更高等级 "
              }
            },
            requestOptions: RequestOptions(path: '/api/mobile/index.php'),
          )));

      final resp = await client.viewThread("888430", 1);

      expect(resp.variables.thread.tid, '888430');
      expect(resp.message?.messageVal != null, true);
    });
  });
}
