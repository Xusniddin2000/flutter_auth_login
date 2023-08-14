import 'package:flutter/material.dart';
import 'package:flutter_auth_login/repository/db/auth_db_service.dart';
import 'package:flutter_auth_login/view/login_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  AuthDB.registerAdapter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthLogin(),
    );
  }
}
