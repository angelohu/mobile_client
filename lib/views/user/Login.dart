import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_login/flutter_login.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterLogin(
        title: 'RISTOE',
        onLogin: (_) => null,
        onSignup: (_) => null,
        onSubmitAnimationCompleted: () {},
        onRecoverPassword: (_) => null,
        theme: LoginTheme(
            primaryColor: const Color(0XFFF9F9FF),
            accentColor: Colors.orange,
            buttonTheme:
                const LoginButtonTheme(backgroundColor: Color(0XFFFFA200))),
      ),
    );
  }
}
