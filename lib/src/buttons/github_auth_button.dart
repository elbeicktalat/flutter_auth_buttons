// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/helpers/auth_button_color.dart';
import 'package:auth_buttons/src/helpers/auth_resolved_button_color.dart';
import 'package:auth_buttons/src/helpers/auth_resolved_icon_url.dart';
import 'package:auth_buttons/src/helpers/auth_resolved_text_style.dart';
import 'package:auth_buttons/src/helpers/auth_text_color.dart';
import 'package:auth_buttons/src/shared/dist/auth_button.dart';
import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/utils/auth_icons.dart';
import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:flutter/material.dart';

class GithubAuthButton extends AuthButton {
  const GithubAuthButton({
    Key? key,
    VoidCallback? onPressed,
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
    if (style!.buttonType == AuthButtonType.secondary) return AuthColors.github;
    if (style!.buttonType != AuthButtonType.secondary)
      return const Color(0xff6d7c8b);
  }

  @override
  String getIconUrl() {
    return resolvedIconUrl(
      iconUrl: AuthIcons.github,
      whiteIconUrl: AuthIcons.githubWhite,
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
            AuthColors.github,
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
    return style!.textStyle ??
        resolvedTextStyle(
          buttonType: style!.buttonType,
          iconType: style!.iconType,
          enabled: enabled,
          fontWeight: FontWeight.bold,
          textColor: TextColor(
            Colors.white,
            onSecondaryIcon: AuthColors.github,
          ),
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
