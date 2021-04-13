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

class TwitterAuthButton extends AuthButton {
  const TwitterAuthButton({
    Key? key,
    required VoidCallback onPressed,
    String text = 'Sign in with Twitter',
    bool darkMode = false,
    bool rtl = false,
    VoidCallback? onLongPressed,
    bool isLoading = false,
    AuthButtonStyle? style,
  }) : super(
          key: key ?? const ValueKey<String>('TwitterAuthButton'),
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
    if (style!.authButtonStyleType == AuthButtonStyleType.secondary)
      return Colors.blue;
    if (style!.authButtonStyleType != AuthButtonStyleType.secondary)
      return Colors.blue[200];
  }

  @override
  String getIconUrl() {
    if (style!.authButtonStyleType == AuthButtonStyleType.secondary)
      return darkMode
          ? (style!.iconStyle == AuthIconStyle.outlined)
              ? AuthIcons.twitterWhite[1]
              : AuthIcons.twitterWhite[0]
          : (style!.iconStyle == AuthIconStyle.outlined)
              ? AuthIcons.twitter[1]
              : AuthIcons.twitter[0];

    if (style!.iconStyle == AuthIconStyle.outlined)
      return darkMode
          ? (style!.iconStyle == AuthIconStyle.outlined)
              ? AuthIcons.twitter[1]
              : AuthIcons.twitter[0]
          : (style!.iconStyle == AuthIconStyle.outlined)
              ? AuthIcons.twitterWhite[1]
              : AuthIcons.twitterWhite[0];

    return darkMode ? AuthIcons.twitter[0] : AuthIcons.twitterWhite[0];
  }

  @override
  Color getButtonColor() {
    if (style!.authButtonStyleType == AuthButtonStyleType.secondary)
      return style!.buttonColor ??
          (darkMode ? AuthColors.darkMode : Colors.blue);
    return style!.buttonColor ?? (darkMode ? AuthColors.darkMode : Colors.blue);
  }

  @override
  TextStyle getTextStyle() {
    return style!.textStyle ??
        const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.50,
        );
  }
}
