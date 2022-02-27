// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/helpers/auth_button_color.dart';
import 'package:auth_buttons/src/helpers/auth_resolved_button_color.dart';
import 'package:auth_buttons/src/helpers/auth_resolved_icon_url.dart';
import 'package:auth_buttons/src/helpers/auth_resolved_text_style.dart';
import 'package:auth_buttons/src/helpers/auth_text_color.dart';
import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:auth_buttons/src/shared/dist/auth_button.dart';
import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:auth_buttons/src/utils/auth_icons.dart';
import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:flutter/material.dart';

///create email authentication button with multiple styles.
///
/// default style.
///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/email.png)
///
/// secondary style.
///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/email-secondary.png)
///
/// icon style.
///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/email-icon.png)
class EmailAuthButton extends AuthButton {
  const EmailAuthButton({
    Key? key,
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    String text = 'Sign in with Email',
    bool darkMode = false,
    bool rtl = false,
    bool isLoading = false,
    AuthButtonStyle? style,
  }) : super(
          key: key ?? const ValueKey<String>('EmailAuthButton'),
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
    if (style!.buttonType == AuthButtonType.secondary) return Colors.teal;
    if (style!.buttonType != AuthButtonType.secondary) return Colors.teal[200];
    return null;
  }

  @override
  AuthIcon getIcon() {
    return resolvedIconUrl(
      buttonType: style!.buttonType,
      iconType: style!.iconType,
      buttonColor: getButtonColor(),
      iconUrl: AuthIcons.email,
      iconColor: style!.iconColor,
      iconSize: style!.iconSize,
      darkMode: darkMode,
      canBeWhite: true,
    );
  }

  @override
  Color getButtonColor() {
    return resolvedButtonColor(
      buttonColor: const ButtonColor(
        Colors.teal,
        onSecondaryIcon: Colors.white,
      ),
      darkMode: darkMode,
      enabled: enabled,
      buttonType: style!.buttonType,
      iconType: style!.iconType,
    );
  }

  @override
  TextStyle getTextStyle() {
    return resolvedTextStyle(
      buttonType: style!.buttonType,
      iconType: style!.iconType,
      enabled: enabled,
      fontWeight: FontWeight.w600,
      textColor: TextColor(
        Colors.white,
        onSecondaryIcon: darkMode ? Colors.white : Colors.teal[900],
      ),
    );
  }

  @override
  AuthButtonStyle? getButtonStyle() {
    if (style!.buttonType == AuthButtonType.icon) {
      return style!.merge(
        const AuthButtonStyle(
          width: 50.0,
          height: 50.0,
          borderRadius: 8.0,
          padding: EdgeInsets.zero,
        ),
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
