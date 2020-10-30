import 'package:auth_buttons/res/shared/auth_button_style.dart';
import 'package:auth_buttons/res/shared/button_contents.dart';
import 'package:auth_buttons/res/shared/colors.dart';
import 'package:auth_buttons/res/shared/images_url.dart';
import 'package:auth_buttons/res/shared/shared_button.dart';
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

  ///[text] Define text in the button, the default value is ["Sign in with Apple"].
  final String text;

  ///[textStyle] Define the text style
  final TextStyle textStyle;

  ///[darkMode] Define if the theme of the button is dark or light,
  ///the default value is [false].
  final bool darkMode;

  ///[buttonBorderColor] Define the color border around the button,
  ///the default value is [null].
  final Color buttonBorderColor;

  ///[buttonBorderWidth] Define the border width around the button,
  ///the default value is [null].
  final double buttonBorderWidth;

  ///[style] Define the button style.
  final AuthButtonStyle style;

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
    this.buttonBorderColor,
    this.buttonBorderWidth = 2.0,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    switch (style) {
      case AuthButtonStyle.icon:
        return SizedBox(
          width: 55.0,
          height: 55.0,
          child: SharedButton(
            onPressed: onPressed,
            borderRadius: borderRadius,
            buttonPadding: buttonPadding ?? EdgeInsets.all(8.0),
            buttonColor:
                darkMode ? buttonDarkModeColor : buttonColor ?? Colors.white,
            splashColor: splashColor,
            elevation: elevation,
            buttonBorderColor:
                buttonBorderColor ?? darkMode ? Colors.white : Colors.black,
            buttonBorderWidth: buttonBorderWidth,
            child: ButtonContents(
              imageUrl: darkMode ? appleWhiteIcon : appleBlackIcon,
            ),
          ),
        );
        break;
      default:
        return SharedButton(
          onPressed: onPressed,
          borderRadius: borderRadius,
          buttonPadding: buttonPadding ?? EdgeInsets.all(8.0),
          buttonColor:
              darkMode ? buttonDarkModeColor : buttonColor ?? Colors.white,
          splashColor: splashColor,
          elevation: elevation,
          buttonBorderColor: buttonBorderColor,
          buttonBorderWidth: buttonBorderWidth,
          child: ButtonContents(
              imageUrl: darkMode ? appleWhiteIcon : appleBlackIcon,
              text: text,
              darkMode: darkMode,
              textStyle: textStyle),
        );
    }
  }
}
