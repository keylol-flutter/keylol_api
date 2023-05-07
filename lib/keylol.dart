import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:keylol_api/constants.dart';
import 'package:path_provider/path_provider.dart';
import 'package:cookie_jar/cookie_jar.dart';

class Keylol {
  final Dio _dio;

  Keylol._internal(this._dio);

  static Future<Keylol> create() async {
    final dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      queryParameters: {
        'version': version,
      },
    ));

    final appDocDir = await getApplicationDocumentsDirectory();
    final appDocPath = appDocDir.path;

    /// cookie持久化
    final cj = PersistCookieJar(storage: FileStorage(appDocPath + cookiePath));
    dio.interceptors.add(CookieManager(cj));

    return Keylol._internal(dio);
  }

  Dio dio() => _dio;

  void addInterceptor(Interceptor interceptor) {
    _dio.interceptors.add(interceptor);
  }
}
