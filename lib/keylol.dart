import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:html/parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:keylol_api/constants.dart';
import 'package:keylol_api/models/api_response.dart';
import 'package:keylol_api/models/check_post.dart';
import 'package:keylol_api/models/forum_display.dart';
import 'package:keylol_api/models/forum_index.dart';
import 'package:keylol_api/models/guide.dart';
import 'package:keylol_api/models/index.dart';
import 'package:keylol_api/models/login_param.dart';
import 'package:keylol_api/models/my_fav_thread.dart';
import 'package:keylol_api/models/my_note_list.dart';
import 'package:keylol_api/models/post.dart';
import 'package:keylol_api/models/profile.dart';
import 'package:keylol_api/models/space_friend.dart';
import 'package:keylol_api/models/space_reply.dart';
import 'package:keylol_api/models/space_thread.dart';
import 'package:keylol_api/models/variables.dart';
import 'package:keylol_api/models/view_thread.dart';
import 'package:path_provider/path_provider.dart';
import 'package:cookie_jar/cookie_jar.dart';

part 'apis/rest_api.dart';
part 'apis/web_api.dart';

class Keylol {
  final Dio _dio;
  final CookieJar _cj;

  Keylol(this._dio, this._cj);

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

    return Keylol(dio, cj);
  }

  Dio dio() => _dio;

  Future<List<Map<String, String>>> cookies() async {
    final cookies = await _cj.loadForRequest(Uri.parse(baseUrl));
    return cookies.map((cookie) {
      return {cookie.name: cookie.value};
    }).toList();
  }

  Future<void> cleanCookies() async {
    await _cj.deleteAll();
  }

  void addInterceptor(Interceptor interceptor) {
    _dio.interceptors.add(interceptor);
  }
}
