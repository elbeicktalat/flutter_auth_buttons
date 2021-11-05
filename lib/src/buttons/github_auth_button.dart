// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/dist/auth_button.dart';
import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/utils/auth_icons.dart';
import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:flutter/material.dart';

class GithubAuthButton extends AuthButton {
  const GithubAuthButton({
    Key? key,
    required VoidCallback onPressed,
    VoidCallback? onLongPress,
    String text = 'Sign in with Github',
    TextStyle? textStyle,
    bool darkMode = false,
    bool rtl = false,
    bool isLoading = false,
    AuthButtonStyle? style,
  }) : super(
          key: key ?? const ValueKey<String>('GithubAuthButton'),
          onPressed: onPressed,
          onLongPress: onLongPress,
          text: text,
          textStyle: textStyle,
          darkMode: darkMode,
          rtl: rtl,
          isLoading: isLoading,
          style: style,
        );

  @override
  Color? getProgressIndicatorValueColor() {
    if (style!.buttonType == AuthButtonType.secondary) return AuthColors.github;
    if (style!.buttonType != AuthButtonType.secondary)
      return const Color(0xff6d7c8b);
  }

  @override
  String getIconUrl() {
    if (style!.iconType == AuthIconType.outlined)
      return darkMode ? AuthIcons.githubWhite[1] : AuthIcons.github[1];
    if (style!.iconType == AuthIconType.secondary) return AuthIcons.github[2];
    return AuthIcons.githubWhite[0];
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

  @override
  AuthButtonStyle? getButtonStyle() {
    if (style!.buttonType == AuthButtonType.icon)
      return style!.merge(
        AuthButtonStyle(
          width: 50.0,
          height: 50.0,
          borderRadius: 8.0,
        ),
      );
    if (style!.buttonType == AuthButtonType.secondary)
      return style!.merge(
        AuthButtonStyle(
          separator: 12.0,
          height: 40.0,
          borderRadius: 8.0,
        ),
      );
    return style!.merge(
      AuthButtonStyle(
        separator: 12.0,
        height: 40.0,
        borderRadius: 8.0,
      ),
    );
  }
}
