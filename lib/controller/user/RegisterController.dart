import 'dart:convert';

import 'package:get/get.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class RegisterController extends GetxController {
  Duration get loginTime => const Duration(milliseconds: 100);

  bool _isAuth = false;
  bool get isAuth => _isAuth;

  var _userEmail = '';

  String get userEmail => _userEmail;

  Future<String?> authUser(LoginData data) async {
    final prefs = await SharedPreferences.getInstance();
    return Future.delayed(loginTime).then((_) async {
      var url = Uri.https(dotenv.get('API_URL'), '/appapi/users/login');
      var response = await http.post(url, body: {
        'mid': dotenv.get('MID'),
        'username': data.name,
        'password': data.password
      });

      var responseData = jsonDecode(response.body);

      if (responseData['code'] == 201) {
        return responseData['msg'];
      }

      var user = responseData['data'];

      await prefs.setString('token', user['token']);
      await prefs.setString('userEmail', user['email']);
      _isAuth = true;
      update();
      return null;
    });
  }

  @override
  void onInit() async {
    super.onInit();
    final prefs = await SharedPreferences.getInstance();
    _userEmail = await prefs.getString('userEmail')!;
    print(_userEmail);
    update();
  }
}
