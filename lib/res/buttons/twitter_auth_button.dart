// Copyright 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// @dart=2.12

import 'package:auth_buttons/res/shared/auth_button.dart';
import 'package:auth_buttons/res/shared/auth_colors.dart';
import 'package:auth_buttons/res/shared/auth_icons.dart';
import 'package:auth_buttons/res/shared/auth_style.dart';
import 'package:flutter/material.dart';

class TwitterAuthButton extends AuthButton {
  TwitterAuthButton({
    Key? key,
    required VoidCallback onPressed,
    Color? buttonColor,
    Color? splashColor,
    double? elevation,
    double? borderRadius = 8.0,
    EdgeInsets? padding,
    String text = 'Sign in with Twitter',
    TextStyle? textStyle,
    bool darkMode = false,
    Color? borderColor,
    double? borderWidth,
    AuthButtonStyle? style,
    double? width,
    double? height,
    double? iconSize = 35.0,
    double? separator = 10.0,
    bool rtl = false,
    Color? iconBackground,
    AuthIconStyle? iconStyle,
    VoidCallback? onLongPressed,
    Color? shadowColor,
  }) : super(
          key: key ?? ValueKey('TwitterAuthButton'),
          onPressed: onPressed,
          buttonColor: buttonColor,
          splashColor: splashColor,
          elevation: elevation,
          borderRadius: borderRadius,
          padding: padding,
          text: text,
          textStyle: textStyle,
          darkMode: darkMode,
          borderColor: borderColor,
          borderWidth: borderWidth,
          style: style,
          width: width,
          height: height,
          iconSize: iconSize,
          separator: separator,
          rtl: rtl,
          iconBackground: iconBackground,
          iconStyle: iconStyle,
          onLongPress: onLongPressed,
          shadowColor: shadowColor,
        );

  @override
  String getIconUrl() {
    if (style == AuthButtonStyle.secondary)
      return (darkMode)
          ? (iconStyle == AuthIconStyle.outlined)
              ? AuthIcons.twitterWhite[1]
              : AuthIcons.twitterWhite[0]
          : (iconStyle == AuthIconStyle.outlined)
              ? AuthIcons.twitter[1]
              : AuthIcons.twitter[0];

    if (iconStyle == AuthIconStyle.outlined)
      return (darkMode)
          ? (iconStyle == AuthIconStyle.outlined)
              ? AuthIcons.twitter[1]
              : AuthIcons.twitter[0]
          : (iconStyle == AuthIconStyle.outlined)
              ? AuthIcons.twitterWhite[1]
              : AuthIcons.twitterWhite[0];

    return (darkMode) ? AuthIcons.twitter[0] : AuthIcons.twitterWhite[0];
  }

  @override
  Color getButtonColor() {
    if (style == AuthButtonStyle.secondary)
      return buttonColor ?? (darkMode ? AuthColors.darkMode : Colors.blue);
    return buttonColor ?? (darkMode ? AuthColors.darkMode : Colors.blue);
  }

  @override
  TextStyle getTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.50,
    );
  }
}
