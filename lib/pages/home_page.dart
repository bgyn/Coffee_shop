import 'package:coffee_app/components/my_bottom_nav.dart';
import 'package:coffee_app/constant/const.dart';
import 'package:coffee_app/pages/cart_pages.dart';
import 'package:coffee_app/pages/shop_pages.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  navigateBottomBar(int? index) {
    _selectedIndex = index!;
    setState(() {});
  }

  final List<Widget> _pages = [
    //shop page
    const ShopPages(),
    //cart page
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNav(
        onTabChanged: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
