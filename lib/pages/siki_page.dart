import 'package:flutter/material.dart';
import 'package:strygwyr_mobile/theme.dart';

class SignInSiki extends StatelessWidget {
  const SignInSiki({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Login',
                style: primaryTextStyle.copyWith(
                    fontSize: 24, fontWeight: semiBold)),
            SizedBox(
              height: 2,
            ),
            Text(
              'Sign In with SIKI Client',
              style: subtitleTextStyle.copyWith(fontSize: 16),
            )
          ],
        ),
      );
    }

    Widget textInput(title, hint) {
      return Container(
        margin: EdgeInsets.only(top: title == 'Username' ? 100 : 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: bgcolor6, borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Row(
                  children: [
                    Icon(Icons.people_outline_rounded),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: TextFormField(
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                          hintText: hint, hintStyle: subtitleTextStyle),
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget signInButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Text('Sign In',
              style: secondaryTextStyle.copyWith(
                  fontSize: 16, fontWeight: medium)),
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(bottom: 30, top: 20),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text(
                'Back to login page',
                style:
                    purpleTextStyle.copyWith(fontSize: 12, fontWeight: medium),
              ))
        ]),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              textInput("Username", "Your Username"),
              textInput("Password", "Your Password"),
              signInButton(),
              footer()
            ],
          ),
        ),
      ),
    );
  }
}
