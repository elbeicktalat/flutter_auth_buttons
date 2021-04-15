// Copyright 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/auth_button_style.dart';
import 'package:auth_buttons/src/shared/auth_style.dart';
import 'package:auth_buttons/src/shared/button_contents.dart';
import 'package:auth_buttons/src/shared/shared_button.dart';
import 'package:flutter/material.dart';

abstract class AuthButtonStyleButton extends StatefulWidget {
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

  @override
  _AuthButtonStyleButtonState createState() => _AuthButtonStyleButtonState();

  Color getButtonColor();

  Color getIconBackground();

  TextStyle getTextStyle();

  String? getIconUrl();

  Color? getProgressIndicatorValueColor() => Colors.blue;
}

class _AuthButtonStyleButtonState extends State<AuthButtonStyleButton> {
  @override
  Widget build(BuildContext context) {
    switch (widget.style!.buttonType) {
      case AuthButtonType.icon:
        return SharedButton(
          key: widget.key,
          onPressed: widget.onPressed!,
          onLongPress: widget.onLongPress,
          style: AuthButtonStyle(
            width: widget.style!.width ?? 50.0,
            height: widget.style!.height ?? 50.0,
            borderRadius: widget.style!.borderRadius,
            padding: widget.style!.padding ?? const EdgeInsets.all(0),
            buttonColor: widget.getButtonColor(),
            splashColor: widget.style!.splashColor,
            elevation: widget.style!.elevation,
            borderColor: widget.style!.borderColor,
            borderWidth: widget.style!.borderWidth ?? 2.0,
            shadowColor: widget.style!.shadowColor,
          ),
          child: ButtonContents(
            key: widget.key,
            iconUrl: widget.getIconUrl()!,
            isLoading: widget.isLoading,
            style: AuthButtonStyle(
              iconSize: widget.style!.iconSize,
              separator: 0.0,
              progressIndicatorColor: widget.style!.progressIndicatorColor,
              progressIndicatorValueColor:
                  widget.style!.progressIndicatorValueColor ??
                      widget.getProgressIndicatorValueColor(),
              progressIndicatorStrokeWidth:
                  widget.style!.progressIndicatorStrokeWidth,
              progressIndicatorValue: widget.style!.progressIndicatorValue,
            ),
          ),
        );
      case AuthButtonType.secondary:
        return SharedButton(
          key: widget.key,
          onPressed: widget.onPressed!,
          onLongPress: widget.onLongPress,
          style: AuthButtonStyle(
            width: widget.style!.width,
            height: widget.style!.height,
            borderRadius: widget.style!.borderRadius,
            padding:
                widget.style!.padding ?? const EdgeInsets.only(right: 16.0),
            buttonColor: widget.getButtonColor(),
            splashColor: widget.style!.splashColor,
            elevation: widget.style!.elevation,
            borderColor: widget.style!.borderColor,
            borderWidth: widget.style!.borderWidth,
            shadowColor: widget.style!.shadowColor,
          ),
          child: ButtonContents(
            key: widget.key,
            iconUrl: widget.getIconUrl()!,
            text: widget.text!,
            darkMode: widget.darkMode,
            rtl: widget.rtl,
            buttonType: widget.style!.buttonType,
            isLoading: widget.isLoading,
            style: AuthButtonStyle(
              textStyle: widget.getTextStyle(),
              iconSize: widget.style!.iconSize,
              separator: widget.style!.separator,
              borderRadius: widget.style!.borderRadius,
              iconBackground: widget.getIconBackground(),
              buttonType: widget.style!.buttonType,
              progressIndicatorColor: widget.style!.progressIndicatorColor,
              progressIndicatorValueColor:
                  widget.style!.progressIndicatorValueColor ??
                      widget.getProgressIndicatorValueColor(),
              progressIndicatorStrokeWidth:
                  widget.style!.progressIndicatorStrokeWidth,
              progressIndicatorValue: widget.style!.progressIndicatorValue,
            ),
          ),
        );
      default:
        return SharedButton(
          key: widget.key,
          onPressed: widget.onPressed!,
          onLongPress: widget.onLongPress,
          style: AuthButtonStyle(
            width: widget.style!.width,
            height: widget.style!.height,
            borderRadius: widget.style!.borderRadius,
            padding: widget.style!.padding ??
                const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 12.0,
                  bottom: 12.0,
                ),
            buttonColor: widget.getButtonColor(),
            splashColor: widget.style!.splashColor,
            elevation: widget.style!.elevation,
            borderColor: widget.style!.borderColor,
            borderWidth: widget.style!.borderWidth,
            shadowColor: widget.style!.shadowColor,
          ),
          child: ButtonContents(
            key: widget.key,
            iconUrl: widget.getIconUrl()!,
            text: widget.text!,
            darkMode: widget.darkMode,
            rtl: widget.rtl,
            isLoading: widget.isLoading,
            style: AuthButtonStyle(
              textStyle: widget.getTextStyle(),
              iconSize: widget.style!.iconSize,
              separator: widget.style!.separator,
              progressIndicatorColor: widget.style!.progressIndicatorColor,
              progressIndicatorValueColor:
                  widget.style!.progressIndicatorValueColor ??
                      widget.getProgressIndicatorValueColor(),
              progressIndicatorStrokeWidth:
                  widget.style!.progressIndicatorStrokeWidth,
              progressIndicatorValue: widget.style!.progressIndicatorValue,
            ),
          ),
        );
    }
  }
}
