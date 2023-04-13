import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:impervius/main_pages/home_screen.dart';
import 'package:impervius/main_pages/profile_page.dart';
import 'package:impervius/main_pages/wishlist_page.dart';
import 'inbox_page.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  static String id = 'main_home';

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = (index);
    });
  }

  final List<Widget> _pages = [
    const HomeScreen(),
    const WishlistPage(),
    const InboxPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite,
            color: Colors.white,
          ),
          Icon(
            Icons.mail,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
        ],
        index: _selectedIndex,
        color: const Color(0xffbdbdbd),
        backgroundColor: const Color(0xfffafafa),
        buttonBackgroundColor: Colors.black,
        onTap: _navigateBottomBar,
        height: 55,
        animationDuration: const Duration(milliseconds: 450),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
