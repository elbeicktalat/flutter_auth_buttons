// Copyright 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/auth_button_style.dart';
import 'package:auth_buttons/src/shared/auth_button_style_button.dart';
import 'package:auth_buttons/src/shared/auth_style.dart';
import 'package:flutter/material.dart';

class AuthButton extends AuthButtonStyleButton {
  const AuthButton({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    AuthButtonStyle? style,
    String? text,
    bool darkMode = false,
    bool isLoading = false,
    bool rtl = false,
  }) : super(
          key: key,
          onPressed: onPressed,
          onLongPress: onLongPress,
          style: style ?? const AuthButtonStyle(),
          text: text,
          darkMode: darkMode,
          isLoading: isLoading,
          rtl: rtl,
        );

  @override
  Color getButtonColor() => Colors.white;

  @override
  Color getIconBackground() {
    if (style!.buttonType == AuthButtonType.secondary)
      return style!.iconBackground ??
          (darkMode ? Colors.black26 : Colors.white);
    return style!.iconBackground ?? Colors.transparent;
  }

  @override
  TextStyle getTextStyle() {
    if (style!.buttonType == AuthButtonType.secondary)
      return style!.textStyle ??
          const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.50,
          );
    return style!.textStyle ??
        TextStyle(
          color: darkMode ? Colors.white : Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.50,
        );
  }

  @override
  String getIconUrl() => '';

  @override
  Color? getProgressIndicatorValueColor() => Colors.blue;
}
