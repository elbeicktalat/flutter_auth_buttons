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

///create twitter authentication button with multiple styles.
///
/// default style.
///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/twitter.png)
///
/// secondary style.
///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/twitter-secondary.png)
///
/// icon style.
///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/twitter-icon.png)
class TwitterAuthButton extends AuthButton {
  const TwitterAuthButton({
    super.key = const ValueKey<String>('TwitterAuthButton'),
    super.onPressed,
    super.onLongPress,
    super.text = 'Sign in with Twitter',
    @Deprecated(
      'Use ThemeMode instead. '
      'This property has no more effect. '
      'This feature was deprecated after v3.0.0',
    )
        bool darkMode = false,
    super.rtl = false,
    super.isLoading = false,
    super.style,
    super.materialStyle,
    super.themeMode,
  });

  TextTheme get textTheme => TextTheme(
        button: GoogleFonts.getFont(
          'Roboto',
          fontSize: 18,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.50,
        ),
      );

  @override
  AuthIcon getIcon(BuildContext context) {
    return resolvedIconUrl(
      buttonType: style!.buttonType,
      iconType: style!.iconType,
      iconsPath: AuthIcons.twitter,
      iconSize: style!.iconSize,
      iconColor: style!.iconColor,
      materialStyle: getMaterialStyle(context),
      canBeWhite: true,
      isDark: isDark,
      enabled: enabled,
    );
  }

  @override
  Color? resolveBackgroundColor(
    BuildContext context,
    Set<MaterialState> states,
  ) {
    if (!states.contains(MaterialState.disabled)) {
      if (isDark) return AuthColors.darkMode;
      if (style!.buttonType == AuthButtonType.secondary) {
        return Colors.blue;
      }
      if (style!.iconType != null) {
        return Colors.white;
      }
      return Colors.blue;
    }
    return isDark ? AuthColors.disabledDark : AuthColors.disabled;
  }

  @override
  Color? resolveForegroundColor(
    BuildContext context,
    Set<MaterialState> states,
  ) {
    if (!states.contains(MaterialState.disabled)) {
      if (isDark) return Colors.white;
      if (style!.buttonType == AuthButtonType.secondary) return Colors.white;
      if (style!.iconType != null) return Colors.blue;
      return Colors.white;
    }
    return AuthColors.disabledContent;
  }

  @override
  AuthButtonStyle? getButtonStyle() {
    if (style!.buttonType == AuthButtonType.icon) {
      return style!.merge(
        const AuthButtonStyle(),
      );
    }
    if (style!.buttonType == AuthButtonType.secondary) {
      return style!.merge(
        const AuthButtonStyle(
          separator: 12.0,
          height: 40.0,
          borderRadius: 8.0,
        ),
      );
    }
    return style!.merge(
      const AuthButtonStyle(
        separator: 12.0,
        height: 40.0,
        borderRadius: 8.0,
      ),
    );
  }
}
