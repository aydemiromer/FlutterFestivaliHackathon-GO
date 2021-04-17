import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.8),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Ana Sayfa",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: "Anket",
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: "Bağışlar",
          ),
        ]);
  }
}
