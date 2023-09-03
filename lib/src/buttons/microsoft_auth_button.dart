// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/helpers/auth_resolved_background_color.dart';
import 'package:auth_buttons/src/helpers/auth_resolved_foreground_color.dart';
import 'package:auth_buttons/src/helpers/auth_resolved_icon_url.dart';
import 'package:auth_buttons/src/shared/auth_button_style.dart';
import 'package:auth_buttons/src/shared/base/contracts/auth_button.dart';
import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:auth_buttons/src/utils/auth_icons.dart';
import 'package:auth_buttons/src/utils/auth_type.dart';
import 'package:flutter/material.dart';

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
    super.onHover,
    super.onFocusChange,
    super.focusNode,
    super.autofocus,
    super.text = 'Sign in with Microsoft',
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
  Color? getProgressIndicatorColor() => Colors.amber;

  @override
  AuthIcon getIcon(BuildContext context) {
    return resolvedIconUrl(
      buttonType: style.buttonType,
      iconType: style.iconType,
      iconsPath: AuthIcons.microsoft,
      iconSize: style.iconSize,
      iconColor: style.iconColor,
      materialStyle: getMaterialStyle(context),
      canBeWhite: false,
      isDark: isDark,
      enabled: enabled,
    );
  }

  @override
  Color? resolveBackgroundColor(Set<MaterialState> states) {
    return resolvedBackgroundColor(
      color: const ButtonColor(
        Colors.white,
        onSecondaryButton: Colors.amber,
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
  BorderSide? resolveSide(Set<MaterialState> states) {
    if (!states.contains(MaterialState.disabled)) {
      if (style.buttonType != AuthButtonType.secondary) {
        return const BorderSide(
          color: Color(0xff8c8c8c),
        );
      }
    }
    return null;
  }

  @override
  AuthButtonStyle? getButtonStyle() {
    if (style.buttonType == AuthButtonType.icon) {
      return style.merge(
        const AuthButtonStyle(
          borderRadius: 0.0,
        ),
      );
    }
    if (style.buttonType == AuthButtonType.secondary) {
      return style.merge(
        const AuthButtonStyle(
          height: 40.0,
          separator: 12.0,
          borderRadius: 0,
        ),
      );
    }
    return style.merge(
      const AuthButtonStyle(
        height: 40.0,
        separator: 12.0,
        borderRadius: 0,
      ),
    );
  }
}
