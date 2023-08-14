// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

part 'login_response.g.dart';

@HiveType(typeId: 0)
@immutable
class LoginResponse {
  @HiveField(0)
 final  String? tokenType;
  @HiveField(1)
 final  String? tokenBody;
  @HiveField(2)
 final String?  userName;
  @HiveField(3)
 final String?  refreshToken;
  @HiveField(4)
 final String? timestamp;
 const LoginResponse({
    this.tokenType,
    this.tokenBody,
    this.userName,
    this.refreshToken,
    this.timestamp,
  });

  

  LoginResponse copyWith({
    String? tokenType,
    String? tokenBody,
    String? userName,
    String? refreshToken,
    String? timestamp,
  }) {
    return LoginResponse(
      tokenType: tokenType ?? this.tokenType,
      tokenBody: tokenBody ?? this.tokenBody,
      userName: userName ?? this.userName,
      refreshToken: refreshToken ?? this.refreshToken,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenType': tokenType,
      'tokenBody': tokenBody,
      'userName': userName,
      'refreshToken': refreshToken,
      'timestamp': timestamp,
    };
  }

  factory LoginResponse.fromMap(Map<String, dynamic> map) {
    return LoginResponse(
      tokenType: map['tokenType'] != null ? map['tokenType'] as String : null,
      tokenBody: map['tokenBody'] != null ? map['tokenBody'] as String : null,
      userName: map['userName'] != null ? map['userName'] as String : null,
      refreshToken: map['refreshToken'] != null ? map['refreshToken'] as String : null,
      timestamp: map['timestamp'] != null ? map['timestamp'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginResponse.fromJson(String source) => LoginResponse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'LoginResponse(tokenType: $tokenType, tokenBody: $tokenBody, userName: $userName, refreshToken: $refreshToken, timestamp: $timestamp)';
  }

  @override
  bool operator ==(covariant LoginResponse other) {
    if (identical(this, other)) return true;
  
    return 
      other.tokenType == tokenType &&
      other.tokenBody == tokenBody &&
      other.userName == userName &&
      other.refreshToken == refreshToken &&
      other.timestamp == timestamp;
  }

  @override
  int get hashCode {
    return tokenType.hashCode ^
      tokenBody.hashCode ^
      userName.hashCode ^
      refreshToken.hashCode ^
      timestamp.hashCode;
  }
}
