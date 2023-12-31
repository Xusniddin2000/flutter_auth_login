import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_auth_login/core/constants/constant.dart';
import 'package:flutter_auth_login/domain/model/login_response.dart';

import 'package:flutter_auth_login/domain/repository/db/auth_db_service.dart';


class DioClient {
  final AuthDB _loginDBService = AuthDB();
  

  final Dio _dio = Dio(BaseOptions(
      baseUrl: AppConstants.baseUrl,
      connectTimeout:
          const Duration(milliseconds: AppConstants.connectionTimeout),
      receiveTimeout: const Duration(milliseconds: AppConstants.receiveTimeout),
      responseType: ResponseType.json));

  final Map<String, dynamic> headers = {};

  void _addToken(String? tokenType, String? tokenBody) {
    headers['headers'] = {"Authorization": "$tokenType $tokenBody"};
  }

  //Login Request Flutter
  Future<LoginResponse> login(String username, String password) async {
    try {
      Response response = await _dio.post(
        '/auth/login',
        data: {'username': username, 'password': password},
      );
     LoginResponse loginResponse = LoginResponse.fromJson(jsonEncode(response.data));
          final  authModel=await _loginDBService.getAuthModel();
      if(response.statusCode==200){
           
             print(loginResponse);
            

            if (loginResponse.tokenType != null && loginResponse.tokenBody != null) {
                _loginDBService.writeToDB(loginResponse);
           
                 if(authModel!=null){
                  _addToken(authModel.tokenType,authModel.tokenBody);
                 }

        print(headers['headers']);

        Response resp = await get("/user/me");
        print(resp);
      }
      }
      
     

      

         return   loginResponse;
    } on DioError catch (e) {
      rethrow;
    }
  }

  //GET==============================================================
  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      // _addToken(tokenType, tokenBody);

      final Response response = await _dio.get(
        url,
        options: Options(headers: headers['headers']),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Post:----------------------------------------------------------------------
  Future<Response> post(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Put:-----------------------------------------------------------------------
  Future<Response> put(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.put(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Delete:--------------------------------------------------------------------
  Future<dynamic> delete(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.delete(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
