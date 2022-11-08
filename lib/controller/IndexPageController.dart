import 'package:get/get.dart';

class IndexPageController extends GetxController {
  var tabIndexSelcted = 4.obs;

  void onTabItemTapped(int index) {
    tabIndexSelcted.value = index;
  }
}
