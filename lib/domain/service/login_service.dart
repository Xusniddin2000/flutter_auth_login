import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_auth_login/domain/model/login_response.dart';

import 'package:flutter_auth_login/domain/repository/db/token_db_service.dart';

import '../../core/constants/constant.dart';

class DioClientToken {
  TokenDB _loginDBService = TokenDB();

  final Dio _dio = Dio(BaseOptions(
    baseUrl: AppConstants.baseUrl,
    connectTimeout:
        const Duration(milliseconds: AppConstants.connectionTimeout),
    receiveTimeout: const Duration(milliseconds: AppConstants.receiveTimeout),
    responseType: ResponseType.json,
  ));

  void _addToken(String tokenType, String tokenBody) {
    _dio.options.headers["Authorization"] = "$tokenType $tokenBody";
  }

  Future<LoginResponse> login(String username, String password) async {
    try {
      Response response = await _dio.post(
        '/auth/login',
        data: {'username': username, 'password': password},
      );

      if (response.statusCode == 200) {
        LoginResponse loginResponse =
            LoginResponse.fromJson(jsonEncode(response.data));
        print(loginResponse);

        if (loginResponse.tokenType != null &&
            loginResponse.tokenBody != null) {
          _loginDBService.writeToDB(loginResponse.tokenType.toString(),
              loginResponse.tokenBody.toString());
          print(loginResponse.tokenType.toString());
          print(loginResponse.tokenBody.toString());

            
            
          //BU Alohida TokenBox uchun edi
          _addToken(_loginDBService.tokenBox!.get("tokenType"),
               _loginDBService.tokenBox!.get("tokenBody"));

          print(_dio.options.headers);

          Response resp = await get("/user/me");
          print(resp);
        }

        return loginResponse;
      } else {
        throw Exception("Login failed");
      }
    } on DioError catch (e) {
      // Handle DioError here if needed
      rethrow;
    }
  }

  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      // Handle DioError here if needed
      rethrow;
    }
  }
}
