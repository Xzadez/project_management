import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_management/res/theme.dart';
import 'package:project_management/widgets/button_orange.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    Timer(const Duration(milliseconds: 500),
        () => _animationController!.forward());
    super.initState();
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double heightSize = MediaQuery.of(context).size.height;
    double widthSize = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: FadeTransition(
        opacity: _animationController!,
        child: Stack(
          children: [
            SizedBox(
              width: widthSize,
              height: heightSize,
              child: Image.asset(
                'assets/bg.jpg',
                fit: BoxFit.fitHeight,
                height: heightSize,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: SizedBox(
                width: widthSize,
                height: heightSize,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Manage your project task',
                      textAlign: TextAlign.center,
                      style: blackTextStyle1.copyWith(
                        fontSize: widthSize / 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Team and Project management with solution providing App',
                      textAlign: TextAlign.center,
                      style: blackTextStyle1.copyWith(
                        fontSize: widthSize / 28,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: heightSize / 2,
                    ),
                    ButtonOrange(
                      width: widthSize * 0.35,
                      height: heightSize * 0.055,
                      text: 'Get Started',
                      style: blackTextStyle1.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      onPress: () => Navigator.pushNamed(context, '/home'),
                    ),
                    SizedBox(
                      height: heightSize / 15,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
