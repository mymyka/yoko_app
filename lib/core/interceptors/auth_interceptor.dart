import 'package:dio/dio.dart';
import 'package:yoko_app/utils/utils.dart';

class AuthInterceptor extends Interceptor with MainBoxMixin {
  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final authToken = getData(MainBoxKeys.token);
    if (authToken != null) {
      options.headers['Authorization'] = 'Bearer $authToken';
    }
    super.onRequest(options, handler);
  }

  @override
  Future onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401) {
      logout();
      clearData();
    }
    super.onError(err, handler);
  }
}
