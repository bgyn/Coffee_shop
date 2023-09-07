import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNav extends StatelessWidget {
  final Function(int?) onTabChanged;
  const MyBottomNav({super.key, required this.onTabChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: GNav(
          color: Colors.grey[400],
          activeColor: Colors.grey[700],
          mainAxisAlignment: MainAxisAlignment.center,
          tabBackgroundColor: Colors.grey.shade400,
          tabBorderRadius: 24,
          tabActiveBorder: Border.all(
            color: Colors.white,
          ),
          onTabChange: (value) => onTabChanged(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "shop",
            ),
            GButton(
              icon: Icons.shopping_bag_outlined,
              text: "Cart",
            ),
          ]),
    );
  }
}
