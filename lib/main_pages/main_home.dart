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

  void _navigateBottomBar (int index) {
    setState((){
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
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black45,
        onTap: _navigateBottomBar,
      ),
      body: _pages[_selectedIndex],
    );
  }
}
