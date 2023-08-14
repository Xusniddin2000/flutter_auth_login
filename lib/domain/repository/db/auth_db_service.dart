import 'dart:io';


import 'package:flutter_auth_login/domain/model/login_response.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class AuthDB {
  Box<LoginResponse>? authBox;

  Future<void> openBox() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocDir.path);
    authBox = await Hive.openBox<LoginResponse>("Auth");
 }

  Future<void> writeToDB(LoginResponse model) async {
    await openBox();
    await authBox!.clear();
    await authBox!.add(model);
  }

  Future<dynamic> getAuthModel() async {
    await openBox();
    return authBox!.get(0);
  }

  Future<void> deleteAuth() async {
    await openBox();
    await authBox!.deleteFromDisk();
  }
  

  static void registerAdapter()  {
       Hive.registerAdapter(LoginResponseAdapter());
  }


}
