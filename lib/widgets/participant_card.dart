import 'package:flutter/material.dart';
import 'package:strygwyr_mobile/theme.dart';

class ParticipantCard extends StatelessWidget {
  const ParticipantCard(
      {super.key,
      required this.title,
      required this.element,
      required this.dateActivity,
      required this.codeJabker,
      required this.nilaiAK,
      this.marginTop = 0});

  final String title;
  final String element;
  final String dateActivity;
  final String codeJabker;
  final String nilaiAK;
  final double marginTop;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop),
      height: 100,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: primaryColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: semiBold),
              ),
              Text(element,
                  style:
                      priceTextStyle.copyWith(fontSize: 14, fontWeight: light)),
              Text(
                dateActivity,
                style: priceTextStyle.copyWith(fontSize: 14, fontWeight: light),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                codeJabker,
                style:
                    primaryTextStyle.copyWith(fontSize: 16, fontWeight: light),
              ),
              Text(
                nilaiAK,
                style:
                    primaryTextStyle.copyWith(fontSize: 20, fontWeight: bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
