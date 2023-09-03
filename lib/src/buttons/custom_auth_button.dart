// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/helpers/auth_string_extension.dart';
import 'package:auth_buttons/src/shared/auth_button_style.dart';
import 'package:auth_buttons/src/shared/base/contracts/auth_button.dart';
import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/utils/auth_type.dart';
import 'package:flutter/material.dart';

/// Allows you to create your custom authentication button,
/// which will be similar to others in auth_button library.
///
/// You have to provide your own colors and other stuff.
class CustomAuthButton extends AuthButton {
  CustomAuthButton({
    required this.authIcon,
    super.key,
    super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.focusNode,
    super.autofocus,
    super.text,
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
  }) : assert(
          (style.buttonType != AuthButtonType.icon)
              ? text != null && text.isNotBlank
              : text == null,
          (style.buttonType != AuthButtonType.icon)
              ? 'Text must be not blank.'
              : 'Icon button type does not need a text.',
        );

  /// iconUrl Define the iconUrl.
  final AuthIcon authIcon;

  @override
  AuthIcon getIcon(BuildContext context) {
    if (!enabled) {
      return AuthIcon(
        iconPath: authIcon.iconPath,
        iconUrl: authIcon.iconUrl,
        iconSize: authIcon.iconSize,
        color: AuthColors.disabledContent,
      );
    }
    return authIcon;
  }

  @override
  AuthButtonStyle? getButtonStyle() {
    Color? buttonColor;
    if (isDark) buttonColor = AuthColors.darkMode;
    if (!enabled) {
      buttonColor = isDark ? AuthColors.disabledDark : AuthColors.disabled;
    }
    return style.merge(
      AuthButtonStyle(
        separator: 10.0,
        height: 40.0,
        borderRadius: 8.0,
        buttonColor: buttonColor,
      ),
    );
  }
}
