import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './HomePage.dart';
import './MenuPage.dart';
import './CartPage.dart';
import './OrdersPage.dart';
import './ProfilePage.dart';

import 'package:get/get.dart';
import '../controller/IndexPageController.dart';
import '../widget/BottomTabBar.dart';

class IndexPage extends StatelessWidget {
  IndexPage({super.key});

  final IndexPageController _indexPageController =
      Get.put(IndexPageController());

  List pages = [
    const HomePage(),
    const MenuPage(),
    const CartPage(),
    const OrdersPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => pages[_indexPageController.tabIndexSelcted.value],
      ),
      bottomNavigationBar: BottomTabBar(),
    );
  }
}
