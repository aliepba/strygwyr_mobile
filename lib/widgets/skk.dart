import 'package:flutter/material.dart';
import 'package:strygwyr_mobile/theme.dart';

class SertifikatCard extends StatelessWidget {
  const SertifikatCard({super.key, this.jabker, this.code, this.nilai});

  final dynamic jabker;
  final dynamic code;
  final dynamic nilai;

  @override
  Widget build(BuildContext context) {
    String jabkerValue = jabker?.toString() ?? '-';
    String codeValue = code?.toString() ?? '-';
    String nilaiValue = nilai?.toString() ?? '-';

    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: whiteColor),
      margin:
          EdgeInsets.only(top: 10, left: defaultMargin, right: defaultMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.document_scanner),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jabkerValue,
                  style: primaryTextStyle.copyWith(
                      fontSize: 20,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: semiBold),
                ),
                Text(
                  codeValue,
                  style: secondaryTextStyle.copyWith(
                      fontSize: 12, fontWeight: semiBold),
                )
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Text(
              nilaiValue,
              style: priceTextStyle.copyWith(fontSize: 20, fontWeight: bold),
            ),
          )
        ],
      ),
    );
  }
}
