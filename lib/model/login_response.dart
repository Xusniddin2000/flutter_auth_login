

import 'package:hive/hive.dart';
part 'login_response.g.dart';



@HiveType(typeId: 0)
class LoginResponse {
  @HiveField(0)
  String? _tokenType;
  @HiveField(1)
  String? _tokenBody;
  @HiveField(2)
  String? _userName;
  @HiveField(3)
  String? _refreshToken;
  @HiveField(4)
  String? _timestamp;

  LoginResponse(
      {String? tokenType,
      String? tokenBody,
      String? userName,
      String? refreshToken,
      String? timestamp}) {
    if (tokenType != null) {
      this._tokenType = tokenType;
    }
    if (tokenBody != null) {
      this._tokenBody = tokenBody;
    }
    if (userName != null) {
      this._userName = userName;
    }
    if (refreshToken != null) {
      this._refreshToken = refreshToken;
    }
    if (timestamp != null) {
      this._timestamp = timestamp;
    }
  }

  String? get tokenType => _tokenType;
  set tokenType(String? tokenType) => _tokenType = tokenType;
  String? get tokenBody => _tokenBody;
  set tokenBody(String? tokenBody) => _tokenBody = tokenBody;
  String? get userName => _userName;
  set userName(String? userName) => _userName = userName;
  String? get refreshToken => _refreshToken;
  set refreshToken(String? refreshToken) => _refreshToken = refreshToken;
  String? get timestamp => _timestamp;
  set timestamp(String? timestamp) => _timestamp = timestamp;

  LoginResponse.fromJson(Map<String, dynamic> json) {
    _tokenType = json['tokenType'];
    _tokenBody = json['tokenBody'];
    _userName = json['userName'];
    _refreshToken = json['refreshToken'];
    _timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tokenType'] = this._tokenType;
    data['tokenBody'] = this._tokenBody;
    data['userName'] = this._userName;
    data['refreshToken'] = this._refreshToken;
    data['timestamp'] = this._timestamp;
    return data;
  }
}
