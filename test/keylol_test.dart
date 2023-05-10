import 'package:keylol_api/constants.dart';
import 'package:keylol_api/keylol.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';

import 'mock_path_provider_platform.dart';

void main() {
  group('testCreateClient', () {
    TestWidgetsFlutterBinding.ensureInitialized();

    setUp(() async {
      PathProviderPlatform.instance = MockPathProviderPlatform();
    });

    test('create', () async {
      final client = await Keylol.create();
      expect(baseUrl, client.dio().options.baseUrl);
    });
  });
}
