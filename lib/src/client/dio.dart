import 'package:dio/dio.dart';

class DioClient {
  static Dio createDio(String token, String baseUrl) {
    final dio = Dio();

    dio.options.baseUrl = baseUrl;
    dio.options.validateStatus = (int? status) => true;

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers["Crypto-Pay-API-Token"] = token;
          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          return handler.next(e);
        },
      ),
    );

    return dio;
  }
}
