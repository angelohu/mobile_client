import 'package:flutter/material.dart';
import './HomePage.dart';
import './MenuPage.dart';
import './CartPage.dart';
import './OrdersPage.dart';
import './ProfilePage.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int indexSelected = 1;

  List pages = [
    HomePage(),
    MenuPage(),
    CartPage(),
    OrdersPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[indexSelected],
    );
  }
}
