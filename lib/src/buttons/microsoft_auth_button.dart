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

class MicrosoftAuthButton extends AuthButton {
  const MicrosoftAuthButton({
    Key? key,
    required VoidCallback onPressed,
    String text = 'Sign in with Microsoft',
    bool darkMode = false,
    bool rtl = false,
    VoidCallback? onLongPressed,
    bool isLoading = false,
    AuthButtonStyle? style,
  }) : super(
          key: key ?? const ValueKey<String>('MicrosoftAuthButton'),
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
      return Colors.amber;
  }

  @override
  String getIconUrl() {
    if (style!.iconStyle == AuthIconStyle.outlined)
      return AuthIcons.microsoft[1];
    if (style!.iconStyle == AuthIconStyle.secondary)
      return AuthIcons.microsoft[2];
    return AuthIcons.microsoft[0];
  }

  @override
  Color getButtonColor() {
    if (style!.buttonType == AuthButtonType.secondary)
      return style!.buttonColor ??
          (darkMode ? AuthColors.darkMode : Colors.amber);
    return style!.buttonColor ??
        (darkMode ? AuthColors.darkMode : Colors.white);
  }
}
