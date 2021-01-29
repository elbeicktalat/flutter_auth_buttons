import 'package:flutter/material.dart';

class SharedButton extends StatelessWidget {
  ///[onPressed] is a void function well be called when the button pressed.
  final VoidCallback onPressed;

  ///[buttonColor] Define the button color, default value [Colors.white].
  final Color buttonColor;

  ///[splashColor] Define the color when the button onPressed,
  ///the default value is [Colors.grey].
  final Color splashColor;

  ///[borderColor] Define the color border around the button,
  ///the default value is [null].
  final Color borderColor;

  ///[borderWidth] Define the border width around the button,
  ///the default value is [null].
  final double borderWidth;

  ///[elevation] Define the elevation button, the default value is [2.0].
  final double elevation;

  ///[borderRadius] Define the border radius, the default value is [0.0].
  final double borderRadius;

  ///[padding] Define the button padding, the default value is [null].
  final EdgeInsets padding;

  ///[child] .
  final Widget child;

  ///[width] Define the button width.
  final double width;

  ///[height] Define the button height.
  final double height;

  SharedButton({
    @required this.onPressed,
    this.buttonColor,
    this.splashColor,
    this.borderColor,
    this.borderWidth,
    this.elevation,
    this.borderRadius,
    this.padding,
    @required this.child,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    BorderSide borderSide;
    if (borderColor != null && borderWidth != null) {
      borderSide = BorderSide(
        width: borderWidth,
        color: borderColor,
      );
    } else
      borderSide = BorderSide.none;

    return SizedBox(
      width: width,
      height: height,
      child: RaisedButton(
        onPressed: onPressed,
        color: buttonColor,
        splashColor: splashColor,
        elevation: elevation,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 0.0),
          side: borderSide,
        ),
        child: child,
      ),
    );
  }
}
