// Copyright 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/auth_button.dart';
import 'package:auth_buttons/src/shared/auth_colors.dart';
import 'package:auth_buttons/src/shared/auth_button_style.dart';
import 'package:auth_buttons/src/shared/auth_icons.dart';
import 'package:auth_buttons/src/shared/auth_style.dart';
import 'package:flutter/material.dart';

class GithubAuthButton extends AuthButton {
  const GithubAuthButton({
    Key? key,
    required VoidCallback onPressed,
    VoidCallback? onLongPress,
    String text = 'Sign in with Github',
    bool darkMode = false,
    bool rtl = false,
    bool isLoading = false,
    AuthButtonStyle? style,
  }) : super(
          key: key ?? const ValueKey<String>('GithubAuthButton'),
          onPressed: onPressed,
          onLongPress: onLongPress,
          text: text,
          darkMode: darkMode,
          rtl: rtl,
          isLoading: isLoading,
          style: style,
        );

  @override
  Color? getProgressIndicatorValueColor() {
    if (style!.buttonType == AuthButtonType.secondary)
      return AuthColors.github;
    if (style!.buttonType != AuthButtonType.secondary)
      return const Color(0xff6d7c8b);
  }

  @override
  String getIconUrl() {
    return (style!.buttonType == AuthButtonType.secondary)
        ? darkMode
            ? AuthIcons.githubWhite
            : AuthIcons.github
        : darkMode
            ? AuthIcons.githubWhite
            : AuthIcons.githubWhite;
  }

  @override
  Color getButtonColor() {
    if (style!.buttonType == AuthButtonType.secondary)
      return style!.buttonColor ??
          (darkMode ? AuthColors.darkMode : AuthColors.github);
    return style!.buttonColor ??
        (darkMode ? AuthColors.darkMode : AuthColors.github);
  }

  @override
  TextStyle getTextStyle() {
    return const TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.50,
    );
  }
}
