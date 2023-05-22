import 'dart:convert';
import 'dart:io';

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
              data: jsonDecode(
                  File('test_resources/password_login_success.json')
                      .readAsStringSync()),
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
              data: jsonDecode(File('test_resources/password_login_fail.json')
                  .readAsStringSync()),
              requestOptions: RequestOptions(path: '/api/mobile/index.php'))));

      final resp = await client.loginWithPassword(
        username: 'username',
        password: 'password',
      );
      expect(resp.message?.messageVal, 'login_invalid');
    });

    test('should need secCode', () async {
      when(mockDio.post("/api/mobile/index.php",
              queryParameters: {
                'module': 'login',
                'action': 'login',
                'loginsubmit': 'yes',
              },
              data: isA<FormData>()))
          .thenAnswer((realInvocation) => Future.value(Response(
              statusCode: 200,
              data: jsonDecode(
                  File('test_resources/password_login_need_sec_code.json')
                      .readAsStringSync()),
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
            data: jsonDecode(
                File('test_resources/view_thread_without_perm.json')
                    .readAsStringSync()),
            requestOptions: RequestOptions(path: '/api/mobile/index.php'),
          )));

      final resp = await client.viewThread("888430", 1);

      expect(resp.variables.thread.tid, '888430');
      expect(resp.message?.messageVal != null, true);
    });

    test('should success', () async {
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
            data: jsonDecode(
                File('test_resources/view_thread.json').readAsStringSync()),
            requestOptions: RequestOptions(path: '/api/mobile/index.php'),
          )));

      final resp = await client.viewThread("888430", 1);

      expect(resp.variables.thread.tid, '888430');
      expect(resp.variables.specialPoll != null, true);
    });
  });
}
