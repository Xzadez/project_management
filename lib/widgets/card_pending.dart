import 'package:flutter/material.dart';
import 'package:project_management/res/theme.dart';
import 'package:project_management/widgets/tags.dart';

class CardPending extends StatelessWidget {
  const CardPending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        elevation: MaterialStateProperty.all(10),
        backgroundColor: MaterialStateProperty.all(whiteColor1),
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/content');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Design Meeting',
              style: blackTextStyle1.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: heightSize / 100,
            ),
            Text(
              'UI/UX redesign fot task app',
              style: black2TextStyleW500.copyWith(
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: heightSize / 30,
            ),
            Text(
              'End : 4 Nov 2021',
              style: greyTextStyle.copyWith(
                fontSize: 10,
              ),
            ),
            SizedBox(
              height: heightSize / 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Tags(
                  text: 'Urgent',
                  color: redColor,
                ),
                SizedBox(
                  width: widthSize / 60,
                ),
                Tags(
                  text: 'design',
                  color: orangeColor,
                ),
                SizedBox(
                  width: widthSize / 60,
                ),
                Tags(
                  text: 'Meeting',
                  color: blueColor,
                ),
                SizedBox(
                  width: widthSize / 60,
                ),
                Tags(
                  text: 'Android',
                  color: greenColor,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
