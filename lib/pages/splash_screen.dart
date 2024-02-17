import 'dart:async';

import 'package:flutter/material.dart';
import 'package:strygwyr_mobile/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, '/login'));
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
          margin: EdgeInsets.only(top: 30),
          child: Row(
            children: [
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('assets/logo.png'))),
              ),
              Expanded(
                  child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  'Lembaga Pengembangan Jasa Konstruksi',
                  style: subtitleTextStyle.copyWith(
                      fontSize: 20, fontWeight: bold),
                ),
              ))
            ],
          ));
    }

    Widget content() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              width: 376,
              height: 444,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/img_splash.png'))),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text('PENGEMBANGAN KEPROFESIAN BERKELANJUTAN',
                  textAlign: TextAlign.center,
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: semiBold)),
            )
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: bgcolor6,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [header(), content()],
            ),
          ),
        ));
  }
}
