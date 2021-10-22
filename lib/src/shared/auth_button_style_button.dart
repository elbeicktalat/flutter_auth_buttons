// Copyright 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/auth_button_style.dart';
import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:auth_buttons/src/shared/button_contents.dart';
import 'package:auth_buttons/src/shared/shared_button.dart';
import 'package:flutter/material.dart';

abstract class AuthButtonStyleButton extends StatelessWidget {
  const AuthButtonStyleButton({
    Key? key,
    required this.onPressed,
    required this.onLongPress,
    required this.style,
    required this.text,
    required this.darkMode,
    required this.isLoading,
    required this.rtl,
  }) : super(key: key);

  ///**[onPressed]** is a void function well be called when the button is pressed.
  final VoidCallback? onPressed;

  ///**[onLongPress]** is a void function well be called when the button is pressed for long.
  final VoidCallback? onLongPress;

  ///**[style]** define the entire button style, like buttonColor, iconSize,
  /// width, and other.
  final AuthButtonStyle? style;

  ///**[text]** Define text in the button.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/text.png)
  final String? text;

  ///**[darkMode]** Define if the theme of the button is dark or light,
  ///the default value is [false].
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/dark-mode-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-icon.png)
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/dark-mode-icon.png)

  final bool darkMode;

  ///**[isLoading]** A boolean variable which define if something is loading,
  /// if so will be show a progress indicator.
  final bool isLoading;

  ///**[rtl]** A boolean variable needed to support the **right to left** languages.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/google.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/rtl.png)
  final bool rtl;

  Color getButtonColor();

  Color getIconBackground();

  TextStyle getTextStyle();

  String getIconUrl();

  Color? getProgressIndicatorValueColor();

  @override
  Widget build(BuildContext context) {
    switch (style!.buttonType) {
      case AuthButtonType.icon:
        return SharedButton(
          key: key,
          onPressed: onPressed!,
          onLongPress: onLongPress,
          style: AuthButtonStyle(
            width: style!.width ?? 50.0,
            height: style!.height ?? 50.0,
            borderRadius: style!.borderRadius,
            padding: style!.padding ?? const EdgeInsets.all(0),
            buttonColor: getButtonColor(),
            splashColor: style!.splashColor,
            elevation: style!.elevation,
            borderColor: style!.borderColor,
            borderWidth: style!.borderWidth ?? 2.0,
            shadowColor: style!.shadowColor,
          ),
          child: ButtonContents(
            key: key,
            iconUrl: getIconUrl(),
            isLoading: isLoading,
            style: AuthButtonStyle(
              iconSize: style!.iconSize,
              separator: 0.0,
              progressIndicatorColor: style!.progressIndicatorColor,
              progressIndicatorValueColor: style!.progressIndicatorValueColor ??
                  getProgressIndicatorValueColor(),
              progressIndicatorStrokeWidth: style!.progressIndicatorStrokeWidth,
              progressIndicatorValue: style!.progressIndicatorValue,
            ),
          ),
        );
      case AuthButtonType.secondary:
        return SharedButton(
          key: key,
          onPressed: onPressed!,
          onLongPress: onLongPress,
          style: AuthButtonStyle(
            width: style!.width,
            height: style!.height,
            borderRadius: style!.borderRadius,
            padding: style!.padding ?? const EdgeInsets.only(right: 16.0),
            buttonColor: getButtonColor(),
            splashColor: style!.splashColor,
            elevation: style!.elevation,
            borderColor: style!.borderColor,
            borderWidth: style!.borderWidth,
            shadowColor: style!.shadowColor,
          ),
          child: ButtonContents(
            key: key,
            iconUrl: getIconUrl(),
            text: text!,
            darkMode: darkMode,
            rtl: rtl,
            buttonType: style!.buttonType,
            isLoading: isLoading,
            style: AuthButtonStyle(
              textStyle: getTextStyle(),
              iconSize: style!.iconSize,
              separator: style!.separator,
              borderRadius: style!.borderRadius,
              iconBackground: getIconBackground(),
              buttonType: style!.buttonType,
              progressIndicatorColor: style!.progressIndicatorColor,
              progressIndicatorValueColor: style!.progressIndicatorValueColor ??
                  getProgressIndicatorValueColor(),
              progressIndicatorStrokeWidth: style!.progressIndicatorStrokeWidth,
              progressIndicatorValue: style!.progressIndicatorValue,
            ),
          ),
        );
      default:
        return SharedButton(
          key: key,
          onPressed: onPressed!,
          onLongPress: onLongPress,
          style: AuthButtonStyle(
            width: style!.width,
            height: style!.height,
            borderRadius: style!.borderRadius,
            padding: style!.padding ??
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
            buttonColor: getButtonColor(),
            splashColor: style!.splashColor,
            elevation: style!.elevation,
            borderColor: style!.borderColor,
            borderWidth: style!.borderWidth,
            shadowColor: style!.shadowColor,
          ),
          child: ButtonContents(
            key: key,
            iconUrl: getIconUrl(),
            text: text!,
            darkMode: darkMode,
            rtl: rtl,
            isLoading: isLoading,
            style: AuthButtonStyle(
              textStyle: getTextStyle(),
              iconSize: style!.iconSize,
              separator: style!.separator,
              progressIndicatorColor: style!.progressIndicatorColor,
              progressIndicatorValueColor: style!.progressIndicatorValueColor ??
                  getProgressIndicatorValueColor(),
              progressIndicatorStrokeWidth: style!.progressIndicatorStrokeWidth,
              progressIndicatorValue: style!.progressIndicatorValue,
            ),
          ),
        );
    }
  }
}
