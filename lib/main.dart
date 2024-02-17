import 'package:flutter/material.dart';
import 'package:strygwyr_mobile/pages/home/main_page.dart';
import 'package:strygwyr_mobile/pages/login_page.dart';
import 'package:strygwyr_mobile/pages/siki_page.dart';
import 'package:strygwyr_mobile/pages/simpan_page.dart';
import 'package:strygwyr_mobile/pages/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/': (context) => SplashScreen(),
      '/login': (context) => LoginPage(),
      '/home': (context) => MainPage(),
      '/simpan': (context) => SignInSimpan(),
      '/siki': (context) => SignInSiki()
    });
  }
}
