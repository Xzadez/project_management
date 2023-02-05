import 'package:flutter/material.dart';
import 'package:project_management/res/theme.dart';

class Tags extends StatelessWidget {
  final Color? color;
  final String? text;
  const Tags({Key? key, this.color, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 22,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: color,
      ),
      child: Center(
        child: Text(
          text ?? '',
          style: whiteTextStyle.copyWith(
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
