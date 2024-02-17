import 'package:flutter/material.dart';
import 'package:strygwyr_mobile/theme.dart';
import 'package:strygwyr_mobile/widgets/participant_card.dart';
import 'package:strygwyr_mobile/widgets/skk.dart';

class LogbookPage extends StatelessWidget {
  const LogbookPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text(
          'Logbook Page',
          style:
              secondaryTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget content() {
      return Expanded(
          child: Container(
        margin: EdgeInsets.only(top: defaultMargin),
        width: double.infinity,
        color: bgcolor6,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            ParticipantCard(
              title: "Webinar Teknik jalan",
              element: "peserta",
              dateActivity: "12-februari-2024",
              codeJabker: "SI09090",
              nilaiAK: "10",
            ),
            ParticipantCard(
              title: "Webinar Teknik jalan",
              element: "peserta",
              dateActivity: "12-februari-2024",
              codeJabker: "SI09090",
              nilaiAK: "10",
              marginTop: 10,
            )
          ],
        ),
      ));
    }

    Widget emptyActivity() {
      return Expanded(
          child: Container(
        width: double.infinity,
        color: whiteColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Opss no message yet?',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'you have never done a transaction',
              style: secondaryTextStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 44,
              child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  )),
            )
          ],
        ),
      ));
    }

    return Column(
      children: [header(), emptyActivity()],
    );
  }
}
