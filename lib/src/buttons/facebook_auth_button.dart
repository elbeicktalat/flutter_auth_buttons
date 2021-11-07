// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/helpers/auth_resoled_button_color.dart';
import 'package:auth_buttons/src/helpers/auth_resolved_icon_url.dart';
import 'package:auth_buttons/src/shared/dist/auth_button.dart';
import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:auth_buttons/src/utils/auth_button_color.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/utils/auth_icons.dart';
import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:flutter/material.dart';

class FacebookAuthButton extends AuthButton {
  const FacebookAuthButton({
    Key? key,
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    String text = 'Sign in with Facebook',
    bool darkMode = false,
    bool rtl = false,
    bool isLoading = false,
    AuthButtonStyle? style,
  }) : super(
          key: key ?? const ValueKey<String>('FacebookAuthButton'),
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
      return AuthColors.facebook;
    if (style!.buttonType != AuthButtonType.secondary) return Colors.white;
  }

  @override
  String getIconUrl() {
    return resolvedIconUrl(
      iconUrl: AuthIcons.facebook,
      whiteIconUrl: AuthIcons.facebookWhite,
      buttonType: style!.buttonType,
      iconType: style!.iconType,
      darkMode: this.darkMode,
      buttonColor: getButtonColor(),
    );
  }

  @override
  Color getButtonColor() {
    return style!.buttonColor ??
        resolvedButtonColor(
          buttonColor: ButtonColor(
            AuthColors.facebook,
            onSecondaryIcon: Colors.white,
          ),
          darkMode: this.darkMode,
          enabled: this.enabled,
          buttonType: style!.buttonType,
          iconType: style!.iconType,
        );
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
