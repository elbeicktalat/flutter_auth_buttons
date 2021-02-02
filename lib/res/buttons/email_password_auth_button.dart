// Copyright 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/res/shared/auth_button_style.dart';
import 'package:auth_buttons/res/shared/button_contents.dart';
import 'package:auth_buttons/res/shared/colors.dart';
import 'package:auth_buttons/res/shared/images_url.dart';
import 'package:auth_buttons/res/shared/shared_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EmailPasswordAuthButton extends StatelessWidget {
  ///**[onPressed]** is a void function well be called when the button pressed.
  final VoidCallback onPressed;

  ///**[buttonColor]** Define the button color.
  /// The default value is [white] if the [darkMode] = [false].
  /// else the value is [Color(0xff424242)].
  ///
  /// <br/>
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/dark-mode-default.png)
  ///
  /// <br/>
  /// You can also give it any color you want.
  ///```dart
  ///color: Colors.amberAccent,
  ///```
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/button-color-amber.png)
  final Color buttonColor;

  ///**[splashColor]** Define the color when the button onPressed.
  ///The default value is [Colors.grey].
  final Color splashColor;

  ///**[elevation]** Define the elevation button, the default value is [2.0].
  ///
  /// <br/>
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/elevation.png)
  final double elevation;

  ///**[borderRadius]** Define the border radius, the default value is [8.0].
  ///
  /// <br/>
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  /// <br/>
  ///Sure you can give it any other value.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/border-radius.png)
  final double borderRadius;

  ///**[padding]** Define the button padding, the default value is [null],
  /// when the [style] = [AuthButtonStyle.icon],
  /// the value is equal to [0.0], other way is equal to
  /// [EdgeInsets.only(left: 16.0, right: 16.0, top: 6.0, bottom: 6.0)].
  final EdgeInsets padding;

  ///**[text]** Define text in the button.
  ///
  /// <br/>
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/text.png)
  final String text;

  ///**[textStyle]** Define the text style.
  ///
  ///You can customise the text style how you prefer example:
  /// ```dart
  ///textStyle: TextStyle(
  ///   color: Colors.red[800],
  ///   fontSize: 16.0,
  ///   fontWeight: FontWeight.bold,
  ///   fontStyle: FontStyle.italic,
  ///   letterSpacing: 2.0,
  /// ),
  /// ```
  /// <br/>
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/text-style.png)
  final TextStyle textStyle;

  ///**[darkMode]** Define if the theme of the button is dark or light,
  ///the default value is [false].
  ///
  /// <br/>
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/dark-mode-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-icon.png)
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/dark-mode-icon.png)
  final bool darkMode;

  ///**[borderColor]** Define the border color around the button.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-icon.png)
  ///
  /// <br/>
  /// ```dart
  /// borderColor: Colors.amber
  /// ```
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/border-color-amber.png)
  ///
  /// <br/>
  /// ```dart
  /// borderColor: Colors.green
  /// ```
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/border-color-green.png)
  final Color borderColor;

  ///**[borderWidth]** Define the border width around the button.
  ///
  ///The default value is [null], when the [style] = [AuthButtonStyle.icon],
  ///the value is [2.0].
  ///
  /// <br/>
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/border-width-soft.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/border-width-medium.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/border-width-large.png)
  final double borderWidth;

  ///**[style]** Define the button style.
  ///
  /// <br/>
  /// This is the default style:
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  /// <br/>
  ///```dart
  ///style: AuthButtonStyle.icon,
  ///```
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-icon.png)
  final AuthButtonStyle style;

  ///**[width]** Define the button width, the default value is the minimum.
  final double width;

  ///**[height]** Define the height button, the default value is the minimum.
  final double height;

  ///**[iconSize]** Define the size of the icon, the default value is [35.0].
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  /// <br/>
  /// Also you can give it any size.
  ///
  /// ```dart
  ///iconSize: 25.0,
  /// ```
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/icon-size-small.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/icon-size-big.png)
  final double iconSize;

  ///**[separator]** Define the value of the space between the [Icon] and the [Text].
  ///the default value is [10.0].
  ///
  /// <br/>
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/separator.png)
  final double separator;

  ///**[EmailPasswordAuthButton]** is a button for authentication with EmailPassword.
  ///
  /// <br/>
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/apple.png)
  EmailPasswordAuthButton({
    @required this.onPressed,
    this.buttonColor,
    this.splashColor,
    this.elevation,
    this.borderRadius = 8.0,
    this.padding,
    this.text = 'Sign in with Email and Password',
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
            iconUrl: emailPasswordIcon,
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
            iconUrl: emailPasswordIcon,
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
