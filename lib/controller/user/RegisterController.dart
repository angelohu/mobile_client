import 'package:get/get.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class RegisterController extends GetxController {
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String?> authUser(LoginData data) {
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }
}
