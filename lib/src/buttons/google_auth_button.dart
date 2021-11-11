// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/dist/auth_button.dart';
import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/utils/auth_icons.dart';
import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:auth_buttons/src/utils/smart_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleAuthButton extends AuthButton {
  const GoogleAuthButton({
    Key? key,
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    String text = 'Sign in with Google',
    bool darkMode = false,
    bool rtl = false,
    bool isLoading = false,
    AuthButtonStyle? style,
  }) : super(
          key: key ?? const ValueKey<String>('GoogleAuthButton'),
          onPressed: onPressed,
          onLongPress: onLongPress,
          text: text,
          darkMode: darkMode,
          rtl: rtl,
          isLoading: isLoading,
          style: style,
        );

  @override
  String getIconUrl() {
    if (style!.iconType == AuthIconType.outlined) return AuthIcons.google[1];
    if (style!.iconType == AuthIconType.secondary) return AuthIcons.google[2];
    return AuthIcons.google[0];
  }

  @override
  Color getButtonColor() {
    if (!enabled) return AuthColors.disabled;
    if (style!.buttonType == AuthButtonType.secondary)
      return style!.buttonColor ??
          (darkMode ? AuthColors.darkMode : Colors.blue);
    return style!.buttonColor ??
        (darkMode ? AuthColors.darkMode : Colors.white);
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
          separator: 24.0,
          height: 40.0,
          borderRadius: 8.0,
        ),
      );
    return style!.merge(
      AuthButtonStyle(
        separator: 24.0,
        height: 40.0,
        borderRadius: 8.0,
      ),
    );
  }

  @override
  TextStyle getTextStyle() {
    if (!enabled)
      return GoogleFonts.roboto(
        color: AuthColors.disabledContent,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.50,
      );
    if (style!.buttonType == AuthButtonType.secondary)
      return style!.textStyle ??
          GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.50,
          );
    return style!.textStyle ??
        GoogleFonts.roboto(
          color: Colors.black.smartColor(darkMode),
          fontSize: 18,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.50,
        );
  }
}
