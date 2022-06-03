// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/helpers/auth_resolved_background_color.dart';
import 'package:auth_buttons/src/helpers/auth_resolved_foreground_color.dart';
import 'package:auth_buttons/src/helpers/auth_resolved_icon_url.dart';
import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:auth_buttons/src/shared/dist/auth_button.dart';
import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/utils/auth_icons.dart';
import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:flutter/material.dart';

///create huawei authentication button with multiple styles.
///
/// default style.
///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/huawei.png)
///
/// secondary style.
///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/huawei-secondary.png)
///
/// icon style.
///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/huawei-icon.png)
class HuaweiAuthButton extends AuthButton {
  const HuaweiAuthButton({
    super.key = const ValueKey<String>('HuaweiAuthButton'),
    super.onPressed,
    super.onLongPress,
    super.text = 'Sign in with Huawei',
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

  @override
  Color? getProgressIndicatorColor() {
    if (style!.buttonType == AuthButtonType.secondary) return Colors.red;
    return Colors.red[200];
  }

  @override
  AuthIcon getIcon(BuildContext context) {
    return resolvedIconUrl(
      buttonType: style!.buttonType,
      iconType: style!.iconType,
      iconsPath: AuthIcons.huawei,
      iconSize: style!.iconSize,
      iconColor: style!.iconColor,
      materialStyle: getMaterialStyle(context),
      canBeWhite: true,
      isDark: isDark,
      enabled: enabled,
    );
  }

  @override
  Color? resolveBackgroundColor(Set<MaterialState> states) {
    return resolvedBackgroundColor(
      color: const ButtonColor(
        AuthColors.huawei,
        onOtherIcons: Colors.white,
      ),
      states: states,
      isDark: isDark,
      buttonType: style!.buttonType,
      iconType: style!.iconType,
    );
  }

  @override
  Color? resolveForegroundColor(Set<MaterialState> states) {
    return resolvedForegroundColor(
      foregroundColor: const ForegroundColor(
        Colors.white,
        onOtherIcons: AuthColors.huawei,
      ),
      states: states,
      isDark: isDark,
      buttonType: style!.buttonType,
      iconType: style!.iconType,
    );
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
          separator: 10.0,
          height: 40.0,
        ),
      );
    }
    return style!.merge(
      const AuthButtonStyle(
        separator: 10.0,
        height: 40.0,
      ),
    );
  }
}
