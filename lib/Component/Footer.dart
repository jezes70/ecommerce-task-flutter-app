import 'package:flutter/material.dart';

import '../Pages/App.dart';

class Footer extends StatefulWidget {
  @override
  FooterState createState() => FooterState();
}

class FooterState extends State<Footer> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      if (index == 3) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => App()));
      } else if (index == 0) {
        Navigator.pushNamed(context, '/');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: Colors.red,
      unselectedItemColor: const Color.fromARGB(117, 0, 0, 0),
      currentIndex: _currentIndex,
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.heart_broken_sharp),
          label: 'Trade',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notification_important),
          label: 'Profile',
        ),
      ],
    );
  }
}
