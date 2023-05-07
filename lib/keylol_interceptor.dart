import 'package:dio/dio.dart';

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
    }
    return true;
  }

  void doIntercept(Response response);
}
