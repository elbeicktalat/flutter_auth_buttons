// Copyright 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/auth_button.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/shared/auth_button_style.dart';
import 'package:auth_buttons/src/utils/auth_icons.dart';
import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MicrosoftAuthButton extends AuthButton {
  const MicrosoftAuthButton({
    Key? key,
    required VoidCallback onPressed,
    VoidCallback? onLongPress,
    String text = 'Sign in with Microsoft',
    TextStyle? textStyle,
    bool darkMode = false,
    bool rtl = false,
    bool isLoading = false,
    AuthButtonStyle? style,
  }) : super(
          key: key ?? const ValueKey<String>('MicrosoftAuthButton'),
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
    if (style!.buttonType == AuthButtonType.secondary) return Colors.amber;
  }

  @override
  String getIconUrl() {
    if (style!.iconType == AuthIconType.outlined) return AuthIcons.microsoft[1];
    if (style!.iconType == AuthIconType.secondary)
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

  @override
  AuthButtonStyle? getButtonStyle() {
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
    //Note: Microsoft uses the Segoe UI fonts,
    // but is not available in google fonts for the moment (26/10/2021).
    return GoogleFonts.lato(
      color: darkMode ?  Colors.white : Color(0xff5e5e5e),
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
    );
  }
}
