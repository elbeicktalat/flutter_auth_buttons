import 'package:flutter/material.dart';

class ButtonContents extends StatelessWidget {
  final double iconWidth;
  final double iconHeight;
  final String text;
  final String imageUrl;
  final TextStyle textStyle;

  final bool darkMode;

  ButtonContents({
    this.iconWidth = 30.0,
    this.iconHeight = 30.0,
    this.text = '',
    this.imageUrl,
    this.textStyle,
    this.darkMode = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image(
            image: ExactAssetImage(
              imageUrl,
            ),
            width: iconWidth,
            height: iconHeight,
          ),
        ),
        Text(
          text,
          style: textStyle ??
              TextStyle(
                color: darkMode ? Colors.white : Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.50,
              ),
        ),
      ],
    );
  }
}
