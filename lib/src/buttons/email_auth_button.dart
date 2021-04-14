// Copyright 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// @dart=2.12

import 'package:auth_buttons/src/shared/auth_button.dart';
import 'package:auth_buttons/src/shared/auth_colors.dart';
import 'package:auth_buttons/src/shared/auth_button_style.dart';
import 'package:auth_buttons/src/shared/auth_icons.dart';
import 'package:auth_buttons/src/shared/auth_style.dart';
import 'package:flutter/material.dart';

class EmailAuthButton extends AuthButton {
  const EmailAuthButton({
    Key? key,
    required VoidCallback onPressed,
    String text = 'Sign in with Email',
    bool darkMode = false,
    bool rtl = false,
    VoidCallback? onLongPressed,
    bool isLoading = false,
    AuthButtonStyle? style,
  }) : super(
          key: key ?? const ValueKey<String>('EmailAuthButton'),
          onPressed: onPressed,
          text: text,
          darkMode: darkMode,
          rtl: rtl,
          onLongPress: onLongPressed,
          isLoading: isLoading,
          style: style,
        );

  @override
  Color? getProgressIndicatorValueColor() {
    if (style!.buttonType == AuthButtonType.secondary)
      return Colors.teal;
    if (style!.buttonType != AuthButtonType.secondary)
      return Colors.teal[200];
  }

  @override
  String getIconUrl() {
    if (style!.iconStyle == AuthIconStyle.outlined)
      return darkMode ? AuthIcons.emailWhite[1] : AuthIcons.email[1];
    if (style!.iconStyle == AuthIconStyle.secondary) return AuthIcons.email[2];
    return (style!.buttonType == AuthButtonType.secondary)
        ? AuthIcons.email[0]
        : AuthIcons.emailWhite[0];
  }

  @override
  Color getButtonColor() {
    if (style!.buttonType == AuthButtonType.secondary)
      return style!.buttonColor ??
          (darkMode ? AuthColors.darkMode : Colors.teal);
    if (style!.iconStyle == AuthIconStyle.secondary)
      return style!.buttonColor ??
          (darkMode ? AuthColors.darkMode : Colors.white);
    return style!.buttonColor ?? (darkMode ? AuthColors.darkMode : Colors.teal);
  }

  @override
  TextStyle getTextStyle() {
    if (style!.iconStyle == AuthIconStyle.secondary &&
        style!.buttonType != AuthButtonType.secondary)
      return TextStyle(
        color: darkMode ? Colors.white : Colors.teal[900],
        fontSize: 18,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.50,
      );
    return const TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.50,
    );
  }
}
