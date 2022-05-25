// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/helpers/auth_resolved_icon_url.dart';
import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:auth_buttons/src/shared/dist/auth_button.dart';
import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/utils/auth_icons.dart';
import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///create microsoft authentication button with multiple styles.
///
/// default style.
///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/microsoft.png)
///
/// secondary style.
///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/microsoft-secondary.png)
///
/// icon style.
///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/microsoft-icon.png)
class MicrosoftAuthButton extends AuthButton {
  const MicrosoftAuthButton({
    super.key = const ValueKey<String>('MicrosoftAuthButton'),
    super.onPressed,
    super.onLongPress,
    super.text = 'Sign in with Microsoft',
    @Deprecated(
      'Use ThemeMode instead. '
      'This property has no more effect. '
      'This feature was deprecated after v3.0.0',
    )
        bool darkMode = false,
    super.rtl = false,
    super.isLoading = false,
    super.style,
    super.themeMode,
  });

  @override
  AuthIcon getIcon() {
    return resolvedIconUrl(
      buttonType: style!.buttonType,
      iconType: style!.iconType,
      iconsPath: AuthIcons.microsoft,
      iconSize: style!.iconSize,
      iconColor: style!.iconColor,
      theme: getTheme(),
      canBeWhite: false,
      isDarkMode: isDarkMode,
    );
  }

  @override
  ThemeData getTheme() {
    final TextTheme textTheme = TextTheme(
      button: GoogleFonts.getFont(
        'Roboto',
        fontSize: 18,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.50,
      ),
    );
    if (style!.buttonType == AuthButtonType.secondary) {
      if (isDarkMode) {
        return ThemeData(
          colorScheme: const ColorScheme.dark(),
          textTheme: textTheme,
        );
      }
      return ThemeData(
        colorScheme: const ColorScheme.light(
          surface: Colors.amber,
          onSurface: Colors.white,
        ),
        textTheme: textTheme,
      );
    }
    if (isDarkMode) {
      return ThemeData(
        colorScheme: const ColorScheme.dark(
          surface: AuthColors.darkMode,
        ),
        textTheme: textTheme,
      );
    }
    if (style!.iconType == AuthIconType.secondary) {
      return ThemeData(
        colorScheme: const ColorScheme.light(),
        textTheme: textTheme,
      );
    }
    return ThemeData(
      colorScheme: const ColorScheme.light(),
      textTheme: textTheme,
    );
  }

  @override
  AuthButtonStyle? getButtonStyle() {
    if (style!.buttonType == AuthButtonType.icon) {
      return style!.merge(
        const AuthButtonStyle(
          width: 50.0,
          height: 50.0,
          borderWidth: 1.0,
          borderColor: Color(0xff8c8c8c),
          padding: EdgeInsets.zero,
        ),
      );
    }
    if (style!.buttonType == AuthButtonType.secondary) {
      return style!.merge(
        const AuthButtonStyle(
          height: 40.0,
          separator: 12.0,
        ),
      );
    }
    return style!.merge(
      const AuthButtonStyle(
        height: 40.0,
        separator: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        borderWidth: 1.0,
        borderColor: Color(0xff8c8c8c),
      ),
    );
  }
}
