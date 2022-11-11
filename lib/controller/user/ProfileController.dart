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
    print(userEmail);
    print(prefs.getString('token') != null);
    return prefs.getString('token') != null;
  }
}
