import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today_outlined,
              size: 22,
            ),
            label: 'Calendario'),
        BottomNavigationBarItem(
            icon: Icon(Icons.access_alarms_sharp), label: 'Alarm'),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Usuario'),
      ],
    );
  }
}
