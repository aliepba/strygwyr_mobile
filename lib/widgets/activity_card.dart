import 'package:flutter/material.dart';
import 'package:strygwyr_mobile/theme.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/home');
      },
      child: Container(
        width: 215,
        height: 278,
        margin: EdgeInsets.only(left: defaultMargin),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: secondaryColor),
              child: Image.asset(
                'assets/img_activity.png',
                width: 210,
                height: 154,
              ),
            ),
            Container(
              height: 124,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus rutrum vel dui a vestibulum.",
                    style: primaryTextStyle.copyWith(
                        fontSize: 13, fontWeight: light),
                    overflow: TextOverflow.clip,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "12-01-2024",
                        style: primaryTextStyle.copyWith(fontSize: 10),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, right: 2),
                        child: Text(
                          's/d',
                          style: primaryTextStyle.copyWith(fontSize: 10),
                        ),
                      ),
                      Text(
                        '13-10-2024',
                        style: primaryTextStyle.copyWith(fontSize: 10),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
