// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/dist/auth_button.dart';
import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/utils/auth_icons.dart';
import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:flutter/material.dart';

class HuaweiAuthButton extends AuthButton {
  const HuaweiAuthButton({
    Key? key,
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    String text = 'Sign in with Huawei',
    bool darkMode = false,
    bool rtl = false,
    bool isLoading = false,
    AuthButtonStyle? style,
  }) : super(
          key: key ?? const ValueKey<String>('HuaweiAuthButton'),
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
    if (style!.buttonType == AuthButtonType.secondary) return Colors.red;
    if (style!.buttonType != AuthButtonType.secondary) return Colors.red[200];
  }

  @override
  String getIconUrl() {
    if (style!.iconType == AuthIconType.outlined)
      return darkMode ? AuthIcons.huaweiWhite[1] : AuthIcons.huawei[1];
    if (style!.iconType == AuthIconType.secondary) return AuthIcons.huawei[2];
    return (style!.buttonType == AuthButtonType.secondary)
        ? AuthIcons.huawei[0]
        : AuthIcons.huaweiWhite[0];
  }

  @override
  Color getButtonColor() {
    if (!enabled) return AuthColors.disabled;
    if (style!.buttonType == AuthButtonType.secondary)
      return style!.buttonColor ??
          (darkMode ? AuthColors.darkMode : AuthColors.huawei);
    if (style!.iconType == AuthIconType.secondary)
      return style!.buttonColor ??
          (darkMode ? AuthColors.darkMode : Colors.white);
    return style!.buttonColor ??
        (darkMode ? AuthColors.darkMode : AuthColors.huawei);
  }

  @override
  TextStyle getTextStyle() {
    if (!enabled)
      return TextStyle(
        color: AuthColors.disabledContent,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.50,
      );

    if (style!.iconType == AuthIconType.secondary &&
        style!.buttonType != AuthButtonType.secondary)
      return TextStyle(
        color: darkMode ? Colors.white : Colors.red[800],
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
          separator: 10.0,
          height: 40.0,
          borderRadius: 8.0,
        ),
      );
    return style!.merge(
      AuthButtonStyle(
        separator: 10.0,
        height: 40.0,
        borderRadius: 8.0,
      ),
    );
  }
}
