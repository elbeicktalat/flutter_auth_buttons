import 'package:auth_buttons/shared_button.dart';
import 'package:flutter/material.dart';

class AppleAuthButton extends StatelessWidget {
  ///[onPressed] is a void function well be called when the button pressed
  final VoidCallback onPressed;

  ///[buttonColor] Define the button color, default value [Colors.white].
  final Color buttonColor;

  ///[splashColor] Define the color when the button onPressed,
  ///the default value is [Colors.grey].
  final Color splashColor;

  ///[elevation] Define the elevation button, the default value is [2.0].
  final double elevation;

  ///[borderRadius] Define the border radius, the default value is [0.0].
  final double borderRadius;

  ///[buttonPadding] Define the button padding, the default value is [null].
  final EdgeInsets buttonPadding;

  ///[text] Define text in the button, the default value is ["Sign in with Google"].
  final String text;

  ///[textStyle] Define the text style
  final TextStyle textStyle;

  ///[darkMode] Define if the theme of the button is dark or light,
  ///the default value is [false].
  final bool darkMode;

  AppleAuthButton({
    @required this.onPressed,
    this.buttonColor,
    this.splashColor,
    this.elevation,
    this.borderRadius = 8.0,
    this.buttonPadding,
    this.text = 'Sign in with Apple',
    this.textStyle,
    this.darkMode = false,
  });

  @override
  Widget build(BuildContext context) {
    return SharedButton(
      onPressed: onPressed,
      borderRadius: borderRadius,
      buttonPadding: buttonPadding ?? EdgeInsets.all(8.0),
      buttonColor: darkMode ? Colors.grey[700] : buttonColor ?? Colors.white,
      splashColor: splashColor,
      elevation: elevation,
      contents: [
        Image(
          image: ExactAssetImage(
            darkMode
                ? 'packages/auth_buttons/images/apple_logo_white.png'
                : 'packages/auth_buttons/images/apple_logo_black.png',
          ),
          width: 28,
          height: 28,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Text(
            text,
            style: textStyle ??
                TextStyle(
                  color: darkMode ? Colors.white : Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.75,
                ),
          ),
        ),
      ],
    );
  }
}
