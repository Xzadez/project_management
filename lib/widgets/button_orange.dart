import 'package:flutter/material.dart';
import 'package:project_management/res/theme.dart';

class ButtonOrange extends StatelessWidget {
  final double? width;
  final double? height;
  final String? text;
  final TextStyle? style;
  final VoidCallback? onPress;
  const ButtonOrange({
    Key? key,
    this.width,
    this.height,
    this.text,
    this.style,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(orangeColor),
        elevation: MaterialStateProperty.all(2),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      onPressed: onPress,
      child: SizedBox(
        width: width,
        height: height,
        child: Center(
          child: Text(
            text ?? '',
            style: style,
          ),
        ),
      ),
    );
  }
}
