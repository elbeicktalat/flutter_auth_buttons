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

class AppleAuthButton extends AuthButton {
  const AppleAuthButton({
    Key? key,
    required VoidCallback onPressed,
    VoidCallback? onLongPressed,
    String text = 'Sign in with Apple',
    bool darkMode = false,
    bool rtl = false,
    bool isLoading = false,
    AuthButtonStyle? style,
  }) : super(
          key: key ?? const ValueKey<String>('AppleAuthButton'),
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
      return Colors.black;
  }

  @override
  String getIconUrl() {
    if (style!.iconStyle == AuthIconStyle.outlined)
      return darkMode ? AuthIcons.appleWhite[1] : AuthIcons.apple[1];
    if (style!.iconStyle == AuthIconStyle.secondary) return AuthIcons.apple[2];
    return darkMode ? AuthIcons.appleWhite[0] : AuthIcons.apple[0];
  }

  @override
  Color getButtonColor() {
    if (style!.authButtonStyleType == AuthButtonStyleType.secondary)
      return style!.buttonColor ??
          (darkMode ? AuthColors.darkMode : Colors.black);
    return style!.buttonColor ??
        (darkMode ? AuthColors.darkMode : Colors.white);
  }
}
