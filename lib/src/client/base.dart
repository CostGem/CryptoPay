import 'package:cryptopay/src/client/api_server.dart';
import 'package:cryptopay/src/errors/cryptopay_error.dart';
import 'package:dio/dio.dart';

class BaseClient {
  BaseClient({
    required this.token,
    required this.dio,
    this.apiServer = MAINNET,
  });

  final String token;
  final ApiServer apiServer;
  final Dio dio;

  Map<String, dynamic>? validateParams(Map<String, dynamic>? params) {
    if (params == null) return null;

    final validatedParams = params.map((key, value) {
      if (value == null) return MapEntry(key, null);

      if (value is List) {
        final listAsString = value.every((item) => item is Enum)
            ? value.map((e) => (e as Enum).name).join(",")
            : value.join(",");
        return MapEntry(key, listAsString);
      }

      if (value is Enum) {
        return MapEntry(key, value.name);
      }

      return MapEntry(key, value);
    })
      ..removeWhere((key, value) => value == null);

    print("Validated params: $validatedParams");
    return validatedParams;
  }

  Future<dynamic> makeRequest<T>(
    String method,
    T Function(Map<String, dynamic>) fromJson, {
    Map<String, dynamic>? params,
  }) async {
    final Response response = await _postRequest(
      method,
      params: params,
    );

    final Map<String, dynamic> responseJson = response.data;
    final dynamic result = responseJson['result'];

    if (result is List) {
      return parseToList(result, fromJson);
    }

    if (result is Map && result.containsKey("items")) {
      final List<dynamic> items = responseJson['result']['items'];

      return parseToList(items, fromJson);
    }

    return fromJson(result);
  }

  List<T> parseToList<T>(
    List<dynamic> items,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    List<T> resultItems = [];

    for (Map<String, dynamic> item in items) {
      resultItems.add(fromJson(item));
    }

    return resultItems;
  }

  Future<Response> _postRequest(
    String method, {
    Map<String, dynamic>? params,
  }) async {
    try {
      final Response response = await dio.post(
        method,
        data: validateParams(params),
      );

      print("Response: $response");

      if (response.data["ok"] == false) {
        Map<String, dynamic> error = response.data["error"];

        throw CryptoPayError(code: error["code"], name: error["name"]);
      }

      if (response.data == null) {
        throw Exception();
      }

      return response;
    } on DioException catch (e) {
      throw Exception(e);
    } catch (e) {
      throw Exception('Unknown error: $e');
    }
  }
}
