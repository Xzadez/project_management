import 'package:flutter/material.dart';
import 'package:project_management/res/theme.dart';
import 'package:project_management/widgets/tags.dart';

class CardOnGoing extends StatelessWidget {
  const CardOnGoing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        elevation: MaterialStateProperty.all(10),
        backgroundColor: MaterialStateProperty.all(whiteColor1),
        overlayColor: MaterialStateProperty.all(greyColor.withOpacity(0.05)),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'UI Design Mobile',
              style: blackTextStyle1.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: heightSize / 100,
            ),
            Text(
              'Aku adalah anak gembala selalu riang serta gembira karena aku senang bekerja tak pernah malas atau pun lengah',
              style: black2TextStyleW500.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/avatar.png',
                      width: widthSize / 18,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/avatar.png',
                      width: widthSize / 18,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/avatar.png',
                      width: widthSize / 18,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/avatar.png',
                      width: widthSize / 18,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/avatar.png',
                      width: widthSize / 18,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: heightSize / 50,
            ),
            Text(
              'End : 2 Nov 2021',
              style: greyTextStyle.copyWith(
                fontSize: 10,
              ),
            ),
            SizedBox(
              height: heightSize / 100,
            ),
            Row(
              children: [
                Tags(
                  text: 'Urgent',
                  color: redColor,
                ),
                SizedBox(
                  width: widthSize / 60,
                ),
                Tags(
                  text: 'Design',
                  color: orangeColor,
                ),
                SizedBox(
                  width: widthSize / 60,
                ),
                Tags(
                  text: 'Meeting',
                  color: blueColor,
                ),
              ],
            ),
            SizedBox(
              height: heightSize / 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    width: widthSize / 1.45,
                    child: const LinearProgressIndicator(
                      value: 0.8,
                      minHeight: 10,
                    ),
                  ),
                ),
                Text(
                  '80%',
                  style: blackTextStyle2.copyWith(
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
