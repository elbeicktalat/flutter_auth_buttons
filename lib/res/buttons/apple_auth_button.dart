import 'package:auth_buttons/res/shared/auth_button_style.dart';
import 'package:auth_buttons/res/shared/button_contents.dart';
import 'package:auth_buttons/res/shared/colors.dart';
import 'package:auth_buttons/res/shared/images_url.dart';
import 'package:auth_buttons/res/shared/shared_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppleAuthButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color buttonColor;
  final Color splashColor;
  final double elevation;
  final double borderRadius;
  final EdgeInsets padding;
  final String text;
  final TextStyle textStyle;
  final bool darkMode;
  final Color borderColor;
  final double borderWidth;
  final AuthButtonStyle style;
  final double width;
  final double height;
  final double iconSize;
  final double separator;

  AppleAuthButton({
    @required this.onPressed,
    this.buttonColor,
    this.splashColor,
    this.elevation,
    this.borderRadius = 8.0,
    this.padding,
    this.text = 'Sign in with Apple',
    this.textStyle,
    this.darkMode = false,
    this.borderColor,
    this.borderWidth,
    this.style,
    this.width,
    this.height,
    this.iconSize = 35.0,
    this.separator = 10.0,
  });

  @override
  Widget build(BuildContext context) {
    Color buttonColor =
        darkMode ? buttonDarkModeColor : this.buttonColor ?? Colors.white;
    Color borderColor =
        this.borderColor ?? darkMode ? Colors.white : Colors.black;

    switch (style) {
      case AuthButtonStyle.icon:
        return SharedButton(
          width: width ?? 50.0,
          height: height ?? 50.0,
          onPressed: onPressed,
          borderRadius: borderRadius,
          padding: padding ?? EdgeInsets.all(0),
          buttonColor: buttonColor,
          splashColor: splashColor,
          elevation: elevation,
          borderColor: borderColor,
          borderWidth: borderWidth ?? 2.0,
          child: ButtonContents(
            iconUrl: darkMode ? appleWhiteIcon : appleBlackIcon,
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
          buttonColor: buttonColor,
          splashColor: splashColor,
          elevation: elevation,
          borderColor: borderColor,
          borderWidth: borderWidth,
          child: ButtonContents(
            iconUrl: darkMode ? appleWhiteIcon : appleBlackIcon,
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
