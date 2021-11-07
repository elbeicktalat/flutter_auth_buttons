// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/dist/auth_button.dart';
import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/utils/auth_icons.dart';
import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:flutter/material.dart';

class TwitterAuthButton extends AuthButton {
  const TwitterAuthButton({
    Key? key,
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    String text = 'Sign in with Twitter',
    bool darkMode = false,
    bool rtl = false,
    bool isLoading = false,
    AuthButtonStyle? style,
  }) : super(
          key: key ?? const ValueKey<String>('TwitterAuthButton'),
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
    if (style!.buttonType == AuthButtonType.secondary) return Colors.blue;
    if (style!.buttonType != AuthButtonType.secondary) return Colors.blue[200];
  }

  @override
  String getIconUrl() {
    if (style!.buttonType == AuthButtonType.secondary)
      return darkMode
          ? (style!.iconType == AuthIconType.outlined)
              ? AuthIcons.twitterWhite[1]
              : AuthIcons.twitterWhite[0]
          : (style!.iconType == AuthIconType.outlined)
              ? AuthIcons.twitter[1]
              : AuthIcons.twitter[0];

    if (style!.iconType == AuthIconType.outlined)
      return darkMode
          ? (style!.iconType == AuthIconType.outlined)
              ? AuthIcons.twitter[1]
              : AuthIcons.twitter[0]
          : (style!.iconType == AuthIconType.outlined)
              ? AuthIcons.twitterWhite[1]
              : AuthIcons.twitterWhite[0];

    return darkMode ? AuthIcons.twitter[0] : AuthIcons.twitterWhite[0];
  }

  @override
  Color getButtonColor() {
    if (!enabled) return AuthColors.disabled;
    if (style!.buttonType == AuthButtonType.secondary)
      return style!.buttonColor ??
          (darkMode ? AuthColors.darkMode : Colors.blue);
    return style!.buttonColor ?? (darkMode ? AuthColors.darkMode : Colors.blue);
  }

  @override
  TextStyle getTextStyle() {
    if (!enabled)
      return const TextStyle(
        color: AuthColors.disabledContent,
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
