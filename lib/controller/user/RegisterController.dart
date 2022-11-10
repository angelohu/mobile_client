import 'package:get/get.dart';
import 'package:flutter_login/flutter_login.dart';

class RegisterController extends GetxController {
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String?> authUser(LoginData data) {
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }
}
