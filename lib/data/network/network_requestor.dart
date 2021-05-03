import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:starter/utils/helper/exception_handler.dart';
import 'package:starter/utils/values/constants.dart';

class NetworkRequestor {
  Dio _dio;

  NetworkRequestor._privateConstructor() {
    prepareRequest();
  }

  static final NetworkRequestor shared = NetworkRequestor._privateConstructor();

  void prepareRequest() {
    BaseOptions dioOptions = BaseOptions(
      connectTimeout: Timeouts.CONNECT_TIMEOUT,
      receiveTimeout: Timeouts.RECEIVE_TIMEOUT,
      baseUrl: 'https://api.example.com/', // Env.baseURL
      contentType: Headers.formUrlEncodedContentType,
      responseType: ResponseType.json,
      headers: {'Accept': Headers.jsonContentType},
    );

    _dio = Dio(dioOptions);

    _dio.interceptors.clear();

    _dio.interceptors.addAll([
      LogInterceptor(
        error: true,
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
      )
    ]);
  }

  Future<dynamic> get({
    @required String path,
    Map<String, dynamic> query,
  }) async {
    try {
      final response = await _dio.get(path, queryParameters: query);
      return response.data;
    } on DioError catch (dioError) {
      throw ExceptionHandler.handleDioError(dioError);
    } catch (error) {
      throw ExceptionHandler.handleError(error);
    }
  }

  Future<dynamic> post({
    @required String path,
    Map<String, dynamic> query,
    Map<String, dynamic> data,
  }) async {
    try {
      final response =
          await _dio.post(path, queryParameters: query, data: data);
      return response.data;
    } on DioError catch (dioError) {
      throw ExceptionHandler.handleDioError(dioError);
    } catch (error) {
      throw ExceptionHandler.handleError(error);
    }
  }

  Future<dynamic> put({
    @required String path,
    Map<String, dynamic> query,
    Map<String, dynamic> data,
  }) async {
    try {
      final response = await _dio.put(path, queryParameters: query, data: data);
      return response.data;
    } on DioError catch (dioError) {
      throw ExceptionHandler.handleDioError(dioError);
    } catch (error) {
      throw ExceptionHandler.handleError(error);
    }
  }

  Future<dynamic> patch({
    @required String path,
    Map<String, dynamic> query,
    Map<String, dynamic> data,
  }) async {
    try {
      final response =
          await _dio.patch(path, queryParameters: query, data: data);
      return response.data;
    } on DioError catch (dioError) {
      throw ExceptionHandler.handleDioError(dioError);
    } catch (error) {
      throw ExceptionHandler.handleError(error);
    }
  }

  Future<dynamic> delete({
    @required String path,
    Map<String, dynamic> query,
    Map<String, dynamic> data,
  }) async {
    try {
      final response =
          await _dio.delete(path, queryParameters: query, data: data);
      return response.data;
    } on DioError catch (dioError) {
      throw ExceptionHandler.handleDioError(dioError);
    } catch (error) {
      throw ExceptionHandler.handleError(error);
    }
  }
}
