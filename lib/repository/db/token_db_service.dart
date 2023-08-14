import 'dart:io';

import 'package:flutter_auth_login/model/login_response.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class TokenDB {
  Box? tokenBox;

  Future<void> openBox() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocDir.path);
    tokenBox = await Hive.openBox("Auth");
  }

  Future<void> writeToDB(String tokenType, String tokenBody) async {
    await openBox();
    await tokenBox!.clear();
    await tokenBox!.add({"tokenType": tokenType, "tokenBoy": tokenBody});
    print("Token DB ISHLADI");

    print(tokenBox!.length);
    print(tokenBox!.get("tokenType"));
    print(tokenBox!.get("tokenBody"));
  }

  Future<dynamic> getAuthModel() async {
    await openBox();
    return tokenBox;
  }

  Future<void> deleteAuth() async {
    await openBox();
    await tokenBox!.deleteFromDisk();
  }
}
