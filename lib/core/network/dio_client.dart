import 'package:cat_breeds/config/environment_config.dart';
import 'package:cat_breeds/core/network/api_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ApiClient)
class DioClient implements ApiClient {
  late final Dio _dio;

  DioClient() {
    _dio = Dio(
      BaseOptions(
        baseUrl: EnvironmentConfig.baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          options.headers['x-api-key'] = EnvironmentConfig.apiKey;
          return handler.next(options);
        },
      ),
    );
  }

  @override
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    final Response<dynamic> response = await _dio.get(
      path,
      queryParameters: queryParameters,
    );
    return response.data;
  }
}
