// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/helpers/auth_resolved_button_color.dart';
import 'package:auth_buttons/src/helpers/auth_resolved_icon_url.dart';
import 'package:auth_buttons/src/shared/dist/auth_button.dart';
import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:auth_buttons/src/utils/auth_button_color.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/utils/auth_icons.dart';
import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:auth_buttons/src/utils/smart_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppleAuthButton extends AuthButton {
  const AppleAuthButton({
    Key? key,
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    String text = 'Sign in with Apple',
    bool darkMode = false,
    bool rtl = false,
    bool isLoading = false,
    AuthButtonStyle? style,
  }) : super(
          key: key ?? const ValueKey<String>('AppleAuthButton'),
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
    if (style!.buttonType == AuthButtonType.secondary) return Colors.black;
  }

  @override
  String getIconUrl() {
    return resolvedIconUrl(
      iconUrl: AuthIcons.apple,
      whiteIconUrl: AuthIcons.appleWhite,
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
            onSecondaryButton: Colors.black,
          ),
          darkMode: this.darkMode,
          enabled: this.enabled,
          buttonType: style!.buttonType,
          iconType: style!.iconType,
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
          separator: 16.0,
          height: 40.0,
          borderRadius: 8.0,
        ),
      );
    return style!.merge(
      AuthButtonStyle(
        separator: 16.0,
        height: 40.0,
        borderRadius: 8.0,
      ),
    );
  }

  @override
  TextStyle getTextStyle() {
    if (!enabled)
      return GoogleFonts.sourceSansPro(
        color: AuthColors.disabledContent,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.50,
      );
    if (style!.buttonType == AuthButtonType.secondary)
      return style!.textStyle ??
          GoogleFonts.sourceSansPro(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.50,
          );
    return style!.textStyle ??
        GoogleFonts.sourceSansPro(
          color: Colors.black.smartColor(darkMode),
          fontSize: 18,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.50,
        );
  }
}
