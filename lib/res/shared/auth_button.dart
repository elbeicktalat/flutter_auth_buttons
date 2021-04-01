// Copyright 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// @dart=2.12

import 'package:auth_buttons/res/shared/auth_style.dart';
import 'package:auth_buttons/res/shared/button_contents.dart';
import 'package:auth_buttons/res/shared/shared_button.dart';
import 'package:flutter/material.dart';

abstract class AuthButton extends StatefulWidget {
  final Key? key;

  ///**[onPressed]** is a void function well be called when the button pressed.
  final VoidCallback? onPressed;

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
  final Color? buttonColor;

  ///**[splashColor]** Define the color when the button onPressed.
  ///The default value is [Colors.grey].
  final Color? splashColor;

  ///**[elevation]** Define the elevation button, the default value is [2.0].
  ///
  /// <br/>
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/elevation.png)
  final double? elevation;

  ///**[borderRadius]** Define the border radius, the default value is [8.0].
  ///
  /// <br/>
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  /// <br/>
  ///Sure you can give it any other value.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/border-radius.png)
  final double? borderRadius;

  ///**[padding]** Define the button padding, the default value is [null],
  /// when the [style] = [AuthButtonStyle.icon],
  /// the value is equal to [0.0], other way is equal to
  /// [EdgeInsets.only(left: 16.0, right: 16.0, top: 6.0, bottom: 6.0)].
  final EdgeInsets? padding;

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
  final TextStyle? textStyle;

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
  final Color? borderColor;

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
  final double? borderWidth;

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
  final AuthButtonStyle? style;

  ///**[width]** Define the button width, the default value is the minimum.
  final double? width;

  ///**[height]** Define the height button, the default value is the minimum.
  final double? height;

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
  final double? iconSize;

  ///**[separator]** Define the value of the space between the [Icon] and the [Text].
  ///the default value is [10.0].
  ///
  /// <br/>
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/separator.png)
  final double? separator;

  ///**[rtl]** A boolean variable needed to support the **right to left** languages.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/google.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/rtl.png)
  final bool rtl;

  ///**[iconBackground]** Define the background icon,
  /// when the **[style]** is equal to **[AuthButtonStyle.secondary]**
  final Color? iconBackground;

  ///**[iconStyle]** Define the icon style.
  ///
  /// <br/>
  /// This's the **default** icon.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/lib/images/default/google.png)
  ///
  ///when the **[iconStyle]** is equal to **[AuthIconStyle.outlined]**
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/lib/images/outlined/google.png)
  ///
  ///when the **[iconStyle]** is equal to **[AuthIconStyle.secondary]**
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/lib/images/secondary/google.png)
  final AuthIconStyle? iconStyle;

  ///**[onLongPress]** is a void function well be called when the button is long pressed.
  final VoidCallback? onLongPress;

  ///**[shadowColor]** Define the color of the shadow.
  final Color? shadowColor;

  ///**[isLoading]** it will give a **CircularProgressIndicator**
  ///if the his value equal to **true**.
  final bool isLoading;

  final Color? progressIndicatorColor;
  final Color? progressIndicatorValueColor;
  final double? progressIndicatorStrokeWidth;
  final double? progressIndicatorValue;

  AuthButton({
    this.key,
    required this.onPressed,
    this.buttonColor,
    this.splashColor,
    this.elevation,
    this.borderRadius,
    this.padding,
    required this.text,
    this.textStyle,
    this.darkMode = false,
    this.borderColor,
    this.borderWidth,
    this.style,
    this.width,
    this.height,
    this.iconSize,
    this.separator,
    this.rtl = false,
    this.iconBackground,
    this.iconStyle,
    this.onLongPress,
    this.shadowColor,
    this.isLoading = false,
    this.progressIndicatorColor,
    this.progressIndicatorValueColor,
    this.progressIndicatorStrokeWidth = 4.0,
    this.progressIndicatorValue,
  });

  Color getButtonColor() => Colors.white;

  @required
  Color getIconBackground() {
    if (style == AuthButtonStyle.secondary)
      return iconBackground ?? (darkMode ? Colors.black26 : Colors.white);
    return iconBackground ?? Colors.transparent;
  }

  TextStyle getTextStyle() {
    if (style == AuthButtonStyle.secondary)
      return textStyle ??
          TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.50,
          );
    return textStyle ??
        TextStyle(
          color: (darkMode ? Colors.white : Colors.black),
          fontSize: 18,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.50,
        );
  }

  String getIconUrl();

  Color? getProgressIndicatorValueColor() => Colors.blue;

  @override
  _AuthButtonState createState() => _AuthButtonState();
}

class _AuthButtonState extends State<AuthButton> {
  @override
  Widget build(BuildContext context) {
    switch (widget.style) {
      case AuthButtonStyle.icon:
        return SharedButton(
          key: widget.key,
          width: widget.width ?? 50.0,
          height: widget.height ?? 50.0,
          onPressed: widget.onPressed,
          borderRadius: widget.borderRadius,
          padding: widget.padding ?? EdgeInsets.all(0),
          buttonColor: widget.getButtonColor(),
          splashColor: widget.splashColor,
          elevation: widget.elevation,
          borderColor: widget.borderColor,
          borderWidth: widget.borderWidth ?? 2.0,
          onLongPress: widget.onLongPress,
          shadowColor: widget.shadowColor,
          child: ButtonContents(
            key: widget.key,
            iconUrl: widget.getIconUrl(),
            iconSize: widget.iconSize,
            separator: 0.0,
            isLoading: widget.isLoading,
            progressIndicatorColor: widget.progressIndicatorColor,
            progressIndicatorValueColor: widget.progressIndicatorValueColor ??
                widget.getProgressIndicatorValueColor(),
            progressIndicatorStrokeWidth: widget.progressIndicatorStrokeWidth,
            progressIndicatorValue: widget.progressIndicatorValue,
          ),
        );
      case AuthButtonStyle.secondary:
        return SharedButton(
          key: widget.key,
          width: widget.width,
          height: widget.height,
          onPressed: widget.onPressed,
          borderRadius: widget.borderRadius,
          padding: widget.padding ?? EdgeInsets.only(right: 16.0),
          buttonColor: widget.getButtonColor(),
          splashColor: widget.splashColor,
          elevation: widget.elevation,
          borderColor: widget.borderColor,
          borderWidth: widget.borderWidth,
          onLongPress: widget.onLongPress,
          shadowColor: widget.shadowColor,
          child: ButtonContents(
            key: widget.key,
            iconUrl: widget.getIconUrl(),
            text: widget.text,
            textStyle: widget.getTextStyle(),
            iconSize: widget.iconSize,
            separator: widget.separator,
            darkMode: widget.darkMode,
            borderRadius: widget.borderRadius,
            iconBackground: widget.getIconBackground(),
            rtl: widget.rtl,
            style: widget.style,
            isLoading: widget.isLoading,
            progressIndicatorColor: widget.progressIndicatorColor,
            progressIndicatorValueColor: widget.progressIndicatorValueColor ??
                widget.getProgressIndicatorValueColor(),
            progressIndicatorStrokeWidth: widget.progressIndicatorStrokeWidth,
            progressIndicatorValue: widget.progressIndicatorValue,
          ),
        );
      default:
        return SharedButton(
          key: widget.key,
          width: widget.width,
          height: widget.height,
          onPressed: widget.onPressed,
          borderRadius: widget.borderRadius,
          padding: widget.padding ??
              EdgeInsets.only(left: 16.0, right: 16.0, top: 6.0, bottom: 6.0),
          buttonColor: widget.getButtonColor(),
          splashColor: widget.splashColor,
          elevation: widget.elevation,
          borderColor: widget.borderColor,
          borderWidth: widget.borderWidth,
          onLongPress: widget.onLongPress,
          shadowColor: widget.shadowColor,
          child: ButtonContents(
            key: widget.key,
            iconUrl: widget.getIconUrl(),
            text: widget.text,
            textStyle: widget.getTextStyle(),
            iconSize: widget.iconSize,
            separator: widget.separator,
            darkMode: widget.darkMode,
            rtl: widget.rtl,
            isLoading: widget.isLoading,
            progressIndicatorColor: widget.progressIndicatorColor,
            progressIndicatorValueColor: widget.progressIndicatorValueColor ??
                widget.getProgressIndicatorValueColor(),
            progressIndicatorStrokeWidth: widget.progressIndicatorStrokeWidth,
            progressIndicatorValue: widget.progressIndicatorValue,
          ),
        );
    }
  }
}
