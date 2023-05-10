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

    test('testNoSecCode', () async {
      when(mockDio.post("/api/mobile/index.php",
              queryParameters: {
                'module': 'login',
                'action': 'login',
                'loginsubmit': 'yes',
              },
              data: FormData.fromMap({
                'username': 'username',
                'password': 'password',
                'answer': '',
                'questionid': '0'
              })))
          .thenAnswer((realInvocation) => Future.value(Response(
              statusCode: 200,
              data: {},
              requestOptions: RequestOptions(path: '/api/mobile/index.php'))));

      expect(
          await client.loginWithPassword(
              username: 'username', password: 'password'),
          true);
    });
  });
}
