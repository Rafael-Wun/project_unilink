import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        iconSize: 32,
        selectedItemColor: Colors.amber,
        currentIndex: _selectedIndex,
        onTap: _onTap,
        items:  [
          BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 0 ? Icons.home : Icons.home_outlined),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 1 ? Icons.explore : Icons.explore_outlined),
              label: 'Explore'
          ),
          BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 2 ? Icons.chat : Icons.chat_bubble_outline_outlined),
              label: 'Chat'
          ),
          BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 3 ? Icons. person : Icons.person_outline),
              label: 'Profile'
          ),
        ],
    );
  }
}
