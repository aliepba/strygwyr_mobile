import 'package:flutter/material.dart';
import 'package:strygwyr_mobile/pages/home/home_page.dart';
import 'package:strygwyr_mobile/pages/home/logbook_page.dart';
import 'package:strygwyr_mobile/pages/home/user_page.dart';
import 'package:strygwyr_mobile/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return LogbookPage();
        case 2:
          return UserPage();
        default:
          return LogbookPage();
      }
    }

    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomNavigationBar(
          backgroundColor: primaryColor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.volunteer_activism_rounded),
              label: 'Activity',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
              ),
              label: 'profile',
            ),
          ],
          currentIndex: currentIndex,
          selectedItemColor: secondaryColor,
          unselectedItemColor: Colors.white,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgcolor6,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
