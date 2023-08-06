
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_auth_login/model/login_response.dart';
import 'package:flutter_auth_login/service/client_service.dart';


class AuthLogin extends StatefulWidget {
  const AuthLogin({Key? key}) : super(key: key);

  @override
  State<AuthLogin> createState() => _AuthLoginState();
}

class _AuthLoginState extends State<AuthLogin> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter JWT Login"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                    labelText: "Username",
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.email)),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.password_outlined)),
              ),
              SizedBox(
                height: 45,
              ),
              OutlinedButton.icon(
                  onPressed: () {
                    login();
                  },
                  icon: Icon(
                    Icons.login,
                    size: 18,
                  ),
                  label: Text("Login"))
            ],
          )),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }

  Future<void> login() async {
    if (kDebugMode) {
      print(" User =${_usernameController.text}");
      print(" Password =${_passwordController.text}");
    }
    LoginResponse response = (await DioClient()
        .login(_usernameController.text, _passwordController.text));

    if (response.userName.toString() == _usernameController.text) {
      print("UserName yoki parol xato kiritilgan,Qaytadan urunib ko'ring");
    } else {
      print(" Enter Successfull");
    }
  }
}
