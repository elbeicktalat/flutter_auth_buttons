// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/auth_buttons.dart';
import 'package:auth_buttons/src/helpers/auth_resolved_background_color.dart';
import 'package:auth_buttons/src/helpers/auth_resolved_foreground_color.dart';
import 'package:auth_buttons/src/helpers/auth_resolved_icon_url.dart';
import 'package:auth_buttons/src/shared/base/contracts/auth_button.dart';
import 'package:auth_buttons/src/utils/auth_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///create apple authentication button with multiple styles.
///
/// default style.
///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/apple.png)
///
/// secondary style.
///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/apple-secondary.png)
///
/// icon style.
///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/apple-icon.png)
class AppleAuthButton extends AuthButton {
  const AppleAuthButton({
    super.key = const ValueKey<String>('AppleAuthButton'),
    super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.focusNode,
    super.autofocus,
    super.text = 'Sign in with Apple',
    @Deprecated(
      'Use ThemeMode instead. '
      'This property has no more effect. '
      'This feature was deprecated after v3.0.0',
    )
    bool darkMode = false,
    @Deprecated(
      'Use TextDirection instead. '
      'This property has no more effect. '
      'This feature was deprecated after v3.0.0',
    )
    bool rtl = false,
    super.isLoading = false,
    super.style,
    super.materialStyle,
    super.themeMode,
    super.textDirection,
  });

  @override
  Color? getProgressIndicatorColor() => isDark ? Colors.grey : Colors.black;

  @override
  AuthIcon getIcon(BuildContext context) {
    return resolvedIconUrl(
      buttonType: style.buttonType,
      iconType: style.iconType,
      iconsPath: AuthIcons.apple,
      iconSize: style.iconSize,
      iconColor: style.iconColor,
      canBeWhite: true,
      materialStyle: getMaterialStyle(context),
      isDark: isDark,
      enabled: enabled,
    );
  }

  @override
  Color? resolveBackgroundColor(Set<MaterialState> states) {
    return resolvedBackgroundColor(
      color: const ButtonColor(
        Colors.white,
        onSecondaryButton: Colors.black,
      ),
      states: states,
      isDark: isDark,
      buttonType: style.buttonType,
      iconType: style.iconType,
    );
  }

  @override
  Color? resolveForegroundColor(Set<MaterialState> states) {
    return resolvedForegroundColor(
      foregroundColor: const ForegroundColor(
        Colors.black,
        onSecondaryButton: Colors.white,
      ),
      states: states,
      isDark: isDark,
      buttonType: style.buttonType,
      iconType: style.iconType,
    );
  }

  @override
  TextStyle? resolveTextStyle(Set<MaterialState> states) {
    return GoogleFonts.getFont(
      'Source Sans Pro',
      fontWeight: FontWeight.w600,
      fontSize: 18,
    );
  }

  @override
  AuthButtonStyle? getButtonStyle() {
    if (style.buttonType == AuthButtonType.icon) {
      return style.merge(
        const AuthButtonStyle(),
      );
    }
    if (style.buttonType == AuthButtonType.secondary) {
      return style.merge(
        const AuthButtonStyle(
          separator: 16.0,
          height: 40.0,
        ),
      );
    }
    return style.merge(
      const AuthButtonStyle(
        separator: 16.0,
        height: 40.0,
      ),
    );
  }
}
