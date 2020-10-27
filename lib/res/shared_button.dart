import 'package:flutter/material.dart';

class SharedButton extends StatelessWidget {
  ///[onPressed] is a void function well be called when the button pressed
  final VoidCallback onPressed;

  ///[buttonColor] Define the button color, default value [Colors.white].
  final Color buttonColor;

  ///[splashColor] Define the color when the button onPressed,
  ///the default value is [Colors.grey].
  final Color splashColor;

  ///[buttonBorderColor] Define the color border around the button,
  ///the default value is [null].
  final Color buttonBorderColor;

  ///[buttonBorderWidth] Define the border width around the button,
  ///the default value is [null].
  final double buttonBorderWidth;

  ///[elevation] Define the elevation button, the default value is [2.0].
  final double elevation;

  ///[borderRadius] Define the border radius, the default value is [0.0].
  final double borderRadius;

  ///[buttonPadding] Define the button padding, the default value is [null].
  final EdgeInsets buttonPadding;

  ///[contents] List of widgets inside the button.
  final List<Widget> contents;

  SharedButton({
    @required this.onPressed,
    this.buttonColor = Colors.white,
    this.splashColor,
    this.buttonBorderColor,
    this.buttonBorderWidth,
    this.elevation,
    this.borderRadius,
    this.buttonPadding,
    @required this.contents,
  });

  @override
  Widget build(BuildContext context) {
    BorderSide borderSide;
    if (buttonBorderColor != null && buttonBorderWidth != null) {
      borderSide = BorderSide(
        width: buttonBorderWidth,
        color: buttonBorderColor,
      );
    }
    borderSide = BorderSide.none;

    return RaisedButton(
      onPressed: onPressed,
      color: buttonColor,
      splashColor: splashColor,
      elevation: elevation,
      padding: buttonPadding,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 0.0),
        side: borderSide,
      ),
      child: SizedBox(
        width: 230,
        height: 30,
        child: Row(
          children: contents,
        ),
      ),
    );
  }
}
