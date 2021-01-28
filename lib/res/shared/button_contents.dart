import 'package:flutter/material.dart';

class ButtonContents extends StatelessWidget {
  final double iconSize;
  final String text;
  final String iconUrl;
  final TextStyle textStyle;
  final bool darkMode;
  final double separator;
  final Color textColor;
  ButtonContents({
    this.iconSize,
    this.text = '',
    this.iconUrl,
    this.textStyle,
    this.darkMode = false,
    this.separator,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: ExactAssetImage(
            iconUrl,
          ),
          width: iconSize,
          height: iconSize,
        ),
        SizedBox(
          width: separator,
        ),
        Text(
          text,
          style: textStyle ??
              TextStyle(
                color: (textColor) ?? (darkMode ? Colors.white : Colors.black),
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.50,
              ),
        ),
      ],
    );
  }
}
