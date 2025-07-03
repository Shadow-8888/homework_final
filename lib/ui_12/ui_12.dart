import 'package:flutter/material.dart';
import 'package:modul4_jabborov/ui_12/pages/cart_page.dart';
import 'package:modul4_jabborov/ui_12/pages/home_page.dart';
import 'package:modul4_jabborov/ui_12/pages/search_page.dart';
import 'package:modul4_jabborov/ui_12/pages/wish_list_page.dart';

class Ui12 extends StatefulWidget {
  const Ui12({super.key});

  @override
  State<Ui12> createState() => _Ui12State();
}

class _Ui12State extends State<Ui12> {
  int _selectedIndex = 0;

  List<Widget> pages = [
    const HomePage(),
    const SearchPage(),
    WishlistPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Icon(Icons.shopping_bag_outlined),
                Positioned(
                  right: 0,
                  top: 0,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.black,
                    child: Text(
                      '2',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
