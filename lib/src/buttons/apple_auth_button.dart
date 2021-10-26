// Copyright 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/auth_button.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/shared/auth_button_style.dart';
import 'package:auth_buttons/src/utils/auth_icons.dart';
import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:flutter/material.dart';

class AppleAuthButton extends AuthButton {
  const AppleAuthButton({
    Key? key,
    required VoidCallback onPressed,
    VoidCallback? onLongPress,
    String text = 'Sign in with Apple',
    TextStyle? textStyle,
    bool darkMode = false,
    bool rtl = false,
    bool isLoading = false,
    AuthButtonStyle? style,
  }) : super(
          key: key ?? const ValueKey<String>('AppleAuthButton'),
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
    if (style!.buttonType == AuthButtonType.secondary) return Colors.black;
  }

  @override
  String getIconUrl() {
    if (style!.iconType == AuthIconType.outlined)
      return darkMode ? AuthIcons.appleWhite[1] : AuthIcons.apple[1];
    if (style!.iconType == AuthIconType.secondary) return AuthIcons.apple[2];
    return darkMode ? AuthIcons.appleWhite[0] : AuthIcons.apple[0];
  }

  @override
  Color getButtonColor() {
    if (style!.buttonType == AuthButtonType.secondary)
      return style!.buttonColor ??
          (darkMode ? AuthColors.darkMode : Colors.black);
    return style!.buttonColor ??
        (darkMode ? AuthColors.darkMode : Colors.white);
  }

  @override
  AuthButtonStyle? getButtonStyle() {
    return style!.merge(
      AuthButtonStyle(),
    );
  }
}
