import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


import 'package:flutter_auth_login/domain/service/client_service.dart';
import 'package:flutter_auth_login/domain/service/login_service.dart';

class AuthLogin extends StatefulWidget {
  const AuthLogin({Key? key}) : super(key: key);

  @override
  State<AuthLogin> createState() => _AuthLoginState();
}

class _AuthLoginState extends State<AuthLogin> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final DioClient _dioClient = DioClient();

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
                  onPressed: () async {
                   await  _dioClient.login(
                        _usernameController.text, _passwordController.text);
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
}
