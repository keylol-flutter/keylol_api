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
}
