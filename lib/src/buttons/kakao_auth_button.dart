// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/helpers/auth_resolved_background_color.dart';
import 'package:auth_buttons/src/helpers/auth_resolved_foreground_color.dart';
import 'package:auth_buttons/src/helpers/auth_resolved_icon_url.dart';
import 'package:auth_buttons/src/shared/auth_button_style.dart';
import 'package:auth_buttons/src/shared/base/contracts/auth_button.dart';
import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/utils/auth_icons.dart';
import 'package:auth_buttons/src/utils/auth_type.dart';
import 'package:flutter/material.dart';

/// create kakao authentication button with multiple styles.
///
/// default style.
///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/kakao.png)
///
/// secondary style.
///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/kakao-secondary.png)
///
/// icon style.
///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/kakao-icon.png)
class KakaoAuthButton extends AuthButton {
  const KakaoAuthButton({
    super.key = const ValueKey<String>('KakaoAuthButton'),
    super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.focusNode,
    super.autofocus,
    super.text = 'Sign in with Kakao',
    super.isLoading = false,
    super.style,
    super.materialStyle,
    super.themeMode,
    super.textDirection,
  });

  @override
  Color? getProgressIndicatorColor() {
    if (style.buttonType == AuthButtonType.secondary) return AuthColors.kakao;
    return Colors.yellow[200];
  }

  @override
  AuthIcon getIcon(BuildContext context) {
    return resolvedIconUrl(
      buttonType: style.buttonType,
      iconType: style.iconType,
      iconsPath: AuthIcons.kakao,
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
        AuthColors.kakao,
        onOtherIcons: Colors.white,
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
        onOtherIcons: AuthColors.kakao,
      ),
      states: states,
      isDark: isDark,
      buttonType: style.buttonType,
      iconType: style.iconType,
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
          separator: 12.0,
          height: 40.0,
        ),
      );
    }
    return style.merge(
      const AuthButtonStyle(
        separator: 12.0,
        height: 40.0,
      ),
    );
  }
}
