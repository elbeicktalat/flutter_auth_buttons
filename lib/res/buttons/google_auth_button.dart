import 'package:auth_buttons/res/shared/auth_button_style.dart';
import 'package:auth_buttons/res/shared/button_contents.dart';
import 'package:auth_buttons/res/shared/colors.dart';
import 'package:auth_buttons/res/shared/images_url.dart';
import 'package:auth_buttons/res/shared/shared_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GoogleAuthButton extends StatelessWidget {
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

  ///[padding] Define the button padding, the default value is [null].
  final EdgeInsets padding;

  ///[text] Define text in the button, the default value is ["Sign in with Google"].
  final String text;

  ///[textStyle] Define the text style.
  final TextStyle textStyle;

  ///[darkMode] Define if the theme of the button is dark or light,
  ///the default value is [false].
  final bool darkMode;

  ///[borderColor] Define the color border around the button,
  ///the default value is [null].
  final Color borderColor;

  ///[borderWidth] Define the border width around the button,
  ///the default value is [null].
  final double borderWidth;

  ///[style] Define the button style.
  final AuthButtonStyle style;

  ///[width] Define the button width, the default value is the minimum.
  final double width;

  ///[height] Define the height button, the default value is the minimum.
  final double height;

  ///[iconSize] Define the size of the icon, the default value is [35.0].
  final double iconSize;

  ///[separator] Define the value of the space between the [Icon] and the [Text],
  ///the default value is [10.0].
  final double separator;

  GoogleAuthButton({
    @required this.onPressed,
    this.buttonColor,
    this.splashColor,
    this.elevation,
    this.borderRadius = 8.0,
    this.padding,
    this.text = 'Sign in with Google',
    this.textStyle,
    this.darkMode = false,
    this.borderColor,
    this.borderWidth = 2.0,
    this.style,
    this.width,
    this.height,
    this.iconSize = 35.0,
    this.separator = 10.0,
  });

  @override
  Widget build(BuildContext context) {
    switch (style) {
      case AuthButtonStyle.icon:
        return SharedButton(
          width: width ?? 50.0,
          height: height ?? 50.0,
          onPressed: onPressed,
          borderRadius: borderRadius,
          padding: padding ?? EdgeInsets.all(0),
          buttonColor:
              darkMode ? buttonDarkModeColor : buttonColor ?? Colors.white,
          splashColor: splashColor,
          elevation: elevation,
          borderColor: borderColor ?? Colors.red,
          borderWidth: borderWidth,
          child: ButtonContents(
            iconUrl: googleIcon,
            iconSize: iconSize,
            separator: 0.0,
          ),
        );
        break;
      default:
        return SharedButton(
          width: width,
          height: height,
          onPressed: onPressed,
          borderRadius: borderRadius,
          padding: padding ??
              EdgeInsets.only(left: 16.0, right: 16.0, top: 6.0, bottom: 6.0),
          buttonColor:
              darkMode ? buttonDarkModeColor : buttonColor ?? Colors.white,
          splashColor: splashColor,
          elevation: elevation,
          borderColor: borderColor,
          borderWidth: borderWidth,
          child: ButtonContents(
            iconUrl: googleIcon,
            text: text,
            textStyle: textStyle,
            iconSize: iconSize,
            separator: separator,
            darkMode: darkMode,
          ),
        );
    }
  }
}
