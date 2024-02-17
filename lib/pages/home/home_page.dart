import 'package:flutter/material.dart';
import 'package:strygwyr_mobile/theme.dart';
import 'package:strygwyr_mobile/widgets/activity_card.dart';
import 'package:strygwyr_mobile/widgets/skk.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
          color: Colors.white,
          width: double.infinity,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: defaultMargin,
                    left: defaultMargin,
                    bottom: defaultMargin),
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('assets/user.png'))),
              ),
              Expanded(
                  child: Container(
                margin: EdgeInsets.only(right: defaultMargin, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello Adudu',
                      style: primaryTextStyle.copyWith(
                          fontSize: 20, fontWeight: bold),
                    ),
                    Text(
                      '@lorem_ipsums',
                      style: primaryTextStyle.copyWith(
                          fontSize: 12, fontWeight: light),
                    )
                  ],
                ),
              )),
            ],
          ));
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: defaultMargin),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: subtitleColor),
                      color: whiteColor),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person_2,
                        size: 12,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Kegiatan',
                        style: blackTextStyle.copyWith(
                            fontSize: 11, fontWeight: medium),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: subtitleColor),
                      color: whiteColor),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person_2,
                        size: 12,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Diklat Kerja',
                        style: blackTextStyle.copyWith(
                            fontSize: 11, fontWeight: medium),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: subtitleColor),
                      color: whiteColor),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person_2,
                        size: 12,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Ruang Konstruksi',
                        style: blackTextStyle.copyWith(
                            fontSize: 11, fontWeight: medium),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      );
    }

    Widget listKegiatanTitle() {
      return Container(
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Text(
          'List Kegiatan Tersedia',
          style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
      );
    }

    Widget listKegiatan() {
      return Container(
        margin: EdgeInsets.only(top: 15, bottom: 14),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [ActivityCard(), ActivityCard(), ActivityCard()],
          ),
        ),
      );
    }

    Widget sertifikatTitle() {
      return Container(
        margin: EdgeInsets.only(left: defaultMargin, right: defaultMargin),
        child: Text(
          'List SKK',
          style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
      );
    }

    Widget sertifikat() {
      return Container(
        margin: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        child: Column(
          children: [
            SertifikatCard(
                jabker: 'Ahli Jembatan', code: 'Code1', nilai: '150'),
            SertifikatCard(jabker: 'Ahli Jalan', code: 'Code2', nilai: '250'),
            SertifikatCard(
                jabker: 'Ahli Terowongan', code: 'Code3', nilai: '350'),
          ],
        ),
      );
    }

    Widget noSertifikat() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.hourglass_empty,
            size: 64,
          ),
          Text(
            'Tidak Punya SKK',
            style:
                primaryTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
          )
        ],
      );
    }

    return ListView(
      children: [
        header(),
        categories(),
        listKegiatanTitle(),
        listKegiatan(),
        sertifikatTitle(),
        sertifikat(),
        // noSertifikat()
      ],
    );
  }
}
