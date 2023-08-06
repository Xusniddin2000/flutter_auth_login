import 'package:dio/dio.dart';
import 'package:flutter_auth_login/core/constants/constant.dart';

class AuthService {
  static Future<void> getTokenAccess() async {
    try {
      String accessToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiNjRiNDI3MTNiOTBkMmM1YmYzMjhlNGFlIn0sImlhdCI6MTY4OTU3NjQzMCwiZXhwIjoxNjkyMTY4NDMwfQ.C9CTd14VBFJAzmAgaiqrQAEObD5gNSE6K6q1FVm5R9Y";
      Response response = await Dio().get(AppConstants.baseUrl,
          options: Options(headers: {"Authorization": "Bearer $accessToken"}));
      print(response.statusCode.toString());

      if (response.statusCode == 200) {
        print(response.statusMessage.toString());
      }
    } on DioError catch (e) {
        
        print(e.message.toString());
    }
  }
}
