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

class FacebookAuthButton extends AuthButton {
  const FacebookAuthButton({
    Key? key,
    required VoidCallback onPressed,
    String text = 'Sign in with Facebook',
    bool darkMode = false,
    bool rtl = false,
    VoidCallback? onLongPressed,
    bool isLoading = false,
    AuthButtonStyle? style,
  }) : super(
          key: key ?? const ValueKey<String>('FacebookAuthButton'),
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
      return AuthColors.facebook;
    if (style!.buttonType != AuthButtonType.secondary)
      return const Color(0xff567de9);
  }

  @override
  String getIconUrl() {
    if (style!.iconType == AuthIconType.outlined)
      return darkMode ? AuthIcons.facebookWhite[1] : AuthIcons.facebook[1];
    if (style!.iconType == AuthIconType.secondary)
      return AuthIcons.facebook[2];
    return AuthIcons.facebookWhite[0];
  }

  @override
  Color getButtonColor() {
    if (style!.buttonType == AuthButtonType.secondary)
      return style!.buttonColor ??
          (darkMode ? AuthColors.darkMode : AuthColors.facebook);
    if (style!.iconType == AuthIconType.secondary)
      return style!.buttonColor ??
          (darkMode ? AuthColors.darkMode : Colors.white);
    return style!.buttonColor ??
        (darkMode ? AuthColors.darkMode : AuthColors.facebook);
  }

  @override
  TextStyle getTextStyle() {
    if (style!.iconType == AuthIconType.secondary && style == null)
      return style!.textStyle ??
          TextStyle(
            color: darkMode ? Colors.white : Colors.blue[800],
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.50,
          );
    return style!.textStyle ??
        const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.50,
        );
  }
}
