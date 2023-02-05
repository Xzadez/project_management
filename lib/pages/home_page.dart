import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_management/res/theme.dart';
import 'package:project_management/services/overscroll.dart';
import 'package:project_management/widgets/card_on_going.dart';
import 'package:project_management/widgets/card_pending.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;

  int pageCount = 0;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    Timer(const Duration(milliseconds: 300),
        () => _animationController!.forward());
    super.initState();
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  final PageController _myPage = PageController();

  Widget? _body(double? heightSize, double? widthSize) {
    return FadeTransition(
      opacity: _animationController!,
      child: ScrollConfiguration(
        behavior: OverScroll(),
        child: PageView(
          controller: _myPage,
          // ignore: avoid_print
          onPageChanged: (value) => setState(() {
            pageCount = value;
          }),
          children: <Widget>[
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    top: 50, bottom: 100, left: edge, right: edge),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi Rachmat Mauluddin',
                              style: blackTextStyle1.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '6 Task are pending',
                              style: blackTextStyle2.copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/avatar.png',
                            width: widthSize! * 0.1,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: heightSize! / 15,
                    ),
                    // >>>>>>>>>>>>>> Konten Untuk On Going
                    Text(
                      'On Going',
                      style: blackTextStyle1.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: heightSize / 50,
                    ),
                    const CardOnGoing(),
                    SizedBox(
                      height: heightSize / 30,
                    ),
                    Text(
                      'Pending',
                      style: blackTextStyle1.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // >>>>>>>>>>>>>> Konten Untuk Pending
                    SizedBox(
                      height: heightSize / 50,
                    ),
                    const CardPending(),
                    SizedBox(
                      height: heightSize / 60,
                    ),
                    const CardPending(),
                    SizedBox(
                      height: heightSize / 60,
                    ),
                    const CardPending(),
                    SizedBox(
                      height: heightSize / 60,
                    ),
                    const CardPending(),
                    SizedBox(
                      height: heightSize / 60,
                    ),
                    const CardPending(),
                    SizedBox(
                      height: heightSize / 60,
                    ),
                    const CardPending(),
                  ],
                ),
              ),
            ),
            const Center(
              child: Text('Empty Body 1'),
            ),
            const Center(
              child: Text('Empty Body 2'),
            ),
            const Center(
              child: Text('Empty Body 3'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double heightSize = MediaQuery.of(context).size.height;
    double widthSize = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      // >>>>>>>>>>>>>> Bottom Navigation Bar
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        color: Colors.transparent,
        elevation: 0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: heightSize / 12,
              margin: EdgeInsets.only(left: edge, right: edge, bottom: edge),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                color: const Color(0xFFEFF7FF),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(18)),
                      color: (pageCount == 0)
                          ? Colors.white
                          : const Color(0xFFEFF7FF),
                    ),
                    child: IconButton(
                      splashRadius: 5,
                      icon: const Icon(
                        Icons.home,
                        size: 26,
                      ),
                      onPressed: () {
                        setState(() {
                          _myPage.jumpToPage(0);
                        });
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(18)),
                      color: (pageCount == 1)
                          ? Colors.white
                          : const Color(0xFFEFF7FF),
                    ),
                    child: IconButton(
                      splashRadius: 5,
                      icon: const Icon(
                        Icons.task,
                        size: 26,
                      ),
                      onPressed: () {
                        setState(() {
                          _myPage.jumpToPage(1);
                        });
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(18)),
                      color: (pageCount == 2)
                          ? Colors.white
                          : const Color(0xFFEFF7FF),
                    ),
                    child: IconButton(
                      splashRadius: 5,
                      icon: const Icon(
                        Icons.calendar_today,
                        size: 26,
                      ),
                      onPressed: () {
                        setState(() {
                          _myPage.jumpToPage(2);
                        });
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(18)),
                      color: (pageCount == 3)
                          ? Colors.white
                          : const Color(0xFFEFF7FF),
                    ),
                    child: IconButton(
                      splashRadius: 5,
                      icon: const Icon(
                        Icons.person,
                        size: 26,
                      ),
                      onPressed: () {
                        setState(() {
                          _myPage.jumpToPage(3);
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: whiteColor1,
      body: _body(heightSize, widthSize),
    );
  }
}
