import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileController extends GetxController {
  var userEmail = ''.obs;

  @override
  void onReady() {
    super.onReady();
    isAuth();
  }

  isAuth() async {
    final prefs = await SharedPreferences.getInstance();
    userEmail(prefs.getString('userEmail'));
    update();
    return prefs.getString('token') != null;
  }

  logOut() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.remove('userEmail');
    await prefs.remove('token');
    userEmail();
    update();
  }
}
