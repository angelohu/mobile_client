import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_login/flutter_login.dart';
import '../../controller/user/RegisterController.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final RegisterController _registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        FlutterLogin(
          title: 'RISTOE',
          onLogin: _registerController.authUser,
          onSignup: (_) => null,
          onSubmitAnimationCompleted: () => Get.back(),
          onRecoverPassword: (_) => null,
          messages: LoginMessages(
            userHint: 'Email',
            passwordHint: 'Password',
            confirmPasswordHint: 'Conferma',
            loginButton: 'ACCEDI',
            signupButton: 'REGISTRATTI',
            forgotPasswordButton: 'dimenticato password?',
            recoverPasswordButton: 'Invia',
            goBackButton: 'Indietro',
            confirmPasswordError: 'Password non corrisponde!',
            recoverPasswordDescription: '',
            recoverPasswordSuccess: 'Password salvata con successo',
          ),
          theme: LoginTheme(
              primaryColor: const Color(0XFFFFA200),
              pageColorLight: const Color(0XFFF9F9FF),
              pageColorDark: const Color(0XFFF9F9FF),
              accentColor: const Color(0XFFFFA200),
              buttonTheme: const LoginButtonTheme(
                backgroundColor: Color(0XFFFFA200),
              )),
        ),
        Positioned(
            height: 160,
            width: 120,
            child: IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(
                  Icons.chevron_left,
                  color: Color(0XFF191C24),
                )))
      ],
    ));
  }
}
