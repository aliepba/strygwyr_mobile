import 'package:flutter/material.dart';
import 'package:strygwyr_mobile/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Widget signInButton(user, title, bgcolor, route) {
      return Container(
        height: 50,
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, route);
          },
          style: TextButton.styleFrom(
              backgroundColor: bgcolor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Text(title,
              style: user == 'skk'
                  ? secondaryTextStyle.copyWith(
                      fontSize: 18, fontWeight: medium)
                  : primaryTextStyle.copyWith(
                      fontSize: 18, fontWeight: medium)),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgcolor6,
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 263,
                height: 343,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/img_splash.png'))),
              ),
            ),
            Center(
              child: Text(
                'Logbook Tenaga Ahli',
                style:
                    primaryTextStyle.copyWith(fontSize: 30, fontWeight: light),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            signInButton('skk', 'Login Simpan', primaryColor, '/simpan'),
            signInButton('ska', 'Login Siki Client', secondaryColor, '/siki')
          ],
        ),
      ),
    );
  }
}
