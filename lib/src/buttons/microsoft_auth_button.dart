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
import 'package:auth_buttons/src/utils/auth_icons.dart';
import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:flutter/material.dart';

class MicrosoftAuthButton extends AuthButton {
  const MicrosoftAuthButton({
    Key? key,
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    String text = 'Sign in with Microsoft',
    bool darkMode = false,
    bool rtl = false,
    bool isLoading = false,
    AuthButtonStyle? style,
  }) : super(
          key: key ?? const ValueKey<String>('MicrosoftAuthButton'),
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
    if (style!.buttonType == AuthButtonType.secondary) return Colors.amber;
  }

  @override
  String getIconUrl() {
    return resolvedIconUrl(
      iconUrl: AuthIcons.microsoft,
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
            Colors.white,
            onSecondaryButton: Colors.amber,
          ),
          darkMode: this.darkMode,
          enabled: this.enabled,
          buttonType: style!.buttonType,
          iconType: style!.iconType,
        );
  }

  @override
  AuthButtonStyle? getButtonStyle() {
    if (!enabled)
      return AuthButtonStyle(
        height: 40.0,
        separator: 12.0,
      );
    if (style!.buttonType == AuthButtonType.icon)
      return style!.merge(
        AuthButtonStyle(
          width: 50.0,
          height: 50.0,
          borderWidth: 1.0,
          borderColor: Color(0xffc8c8c8),
        ),
      );
    if (style!.buttonType == AuthButtonType.secondary)
      return style!.merge(
        AuthButtonStyle(
          height: 40.0,
          separator: 12.0,
        ),
      );
    return style!.merge(
      AuthButtonStyle(
        height: 40.0,
        separator: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        borderWidth: 1.0,
        borderColor: Color(0xff8c8c8c),
      ),
    );
  }

  @override
  TextStyle getTextStyle() {
    return style!.textStyle ??
        resolvedTextStyle(
          buttonType: style!.buttonType,
          iconType: style!.iconType,
          enabled: enabled,
          fontFamily: 'Lato',
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          textColor: TextColor(
            darkMode ? Colors.white : Color(0xff5e5e5e),
            onSecondaryButton: Colors.white,
          ),
        );
  }
}
