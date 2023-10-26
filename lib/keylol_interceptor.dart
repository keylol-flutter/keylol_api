import 'package:dio/dio.dart';

const ignoreModules = ['forumupload'];

abstract class KeylolInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (_valid(response)) {
      doIntercept(response);
    }
    super.onResponse(response, handler);
  }

  bool _valid(Response response) {
    /// 非 api 调用不拦截
    final uri = response.realUri;
    if (!uri.path.contains('/api/mobile/index.php')) {
      return false;
    } else {
      final requestOptions = response.requestOptions;
      final module = requestOptions.queryParameters['module'];
      if (module == null) {
        return false;
      }
      if (ignoreModules.contains(module)) {
        return false;
      }
    }
    return true;
  }

  void doIntercept(Response response);
}
