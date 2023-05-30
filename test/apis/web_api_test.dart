import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:keylol_api/keylol.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'web_api_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  group('testIndex', () {
    final mockDio = MockDio();
    final client = Keylol(mockDio);

    test('should success', () async {
      when(mockDio.get('/'))
          .thenAnswer((realInvocation) => Future.value(Response(
                statusCode: 200,
                data: File('test_resources/index.html').readAsStringSync(),
                requestOptions: RequestOptions(path: '/'),
              )));

      final index = await client.index();

      expect(index.slideViewThreads.isNotEmpty, true);
      expect(index.tabThreadMap.containsKey('最新主题'), true);
      expect(index.tabThreadMap.containsKey('最新回复'), true);
    });

    test('should success with unlogin', () async {
      when(mockDio.get('/'))
          .thenAnswer((realInvocation) => Future.value(Response(
                statusCode: 200,
                data: File('test_resources/index_unlogin.html')
                    .readAsStringSync(),
                requestOptions: RequestOptions(path: '/'),
              )));

      final index = await client.index();

      expect(index.slideViewThreads.isNotEmpty, true);
      expect(index.tabThreadMap.containsKey('最新主题'), true);
      expect(index.tabThreadMap.containsKey('最新回复'), false);
    });
  });
}
