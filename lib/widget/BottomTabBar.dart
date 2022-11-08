import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controller/IndexPageController.dart';

class BottomTabBar extends StatelessWidget {
  BottomTabBar({super.key});

  final IndexPageController _indexPageController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
          elevation: 0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Color(0XFFFFFFFF)),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_book),
                label: 'Menu',
                backgroundColor: Color(0XFFFFFFFF)),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Carrello',
                backgroundColor: Color(0XFFFFFFFF)),
            BottomNavigationBarItem(
                icon: Icon(Icons.my_library_books),
                label: 'Ordini',
                backgroundColor: Color(0XFFFFFFFF)),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Profilo',
                backgroundColor: Color(0XFFFFFFFF)),
          ],
          backgroundColor: Colors.white,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          currentIndex: _indexPageController.tabIndexSelcted.value,
          selectedItemColor: const Color(0XFFFFA200),
          unselectedItemColor: const Color(0XFFC4C5CE),
          onTap: _indexPageController.onTabItemTapped,
        ));
  }
}
