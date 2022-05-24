// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/base/widgets/auth_default_button.dart';
import 'package:auth_buttons/src/shared/base/widgets/auth_icon_button.dart';
import 'package:auth_buttons/src/shared/base/widgets/auth_secondary_button.dart';
import 'package:auth_buttons/src/shared/core/contracts/auth_button_style_button.dart';
import 'package:auth_buttons/src/shared/core/widgets/inherited_auth_button.dart';
import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:flutter/material.dart';

abstract class BaseAuthButton extends AuthButtonStyleButton {
  const BaseAuthButton({
    super.key,
    required super.onPressed,
    super.onLongPress,
    super.style = const AuthButtonStyle(),
    super.text,
    super.darkMode = false,
    super.themeMode = ThemeMode.system,
    super.isLoading = false,
    super.rtl = false,
  });

  @override
  Widget build(BuildContext context) {
    switch (style!.buttonType) {
      case AuthButtonType.icon:
        return AuthIconButton(
          theme: getTheme(),
          onPressed: onPressed,
          onLongPress: onLongPress,
          isLoading: getInheritedIsLoading(context) ?? isLoading,
          rtl: getInheritedRtl(context) ?? rtl,
          authIcon: getIcon(),
          style: getButtonStyle()!.replace(getInheritedStyle(context)),
        );
      case AuthButtonType.secondary:
        return AuthSecondaryButton(
          theme: getTheme(),
          onPressed: onPressed,
          onLongPress: onLongPress,
          isLoading: getInheritedIsLoading(context) ?? isLoading,
          rtl: getInheritedRtl(context) ?? rtl,
          text: text!,
          authIcon: getIcon(),
          style: getButtonStyle()!.replace(
            AuthButtonStyle(
              padding: const EdgeInsets.only(right: 16.0),
              iconBackground:
                  isDarkMode ? Colors.white.withOpacity(.4) : Colors.white,
            ).replace(getInheritedStyle(context)),
          ),
        );
      default:
        return AuthDefaultButton(
          theme: getTheme(),
          onPressed: onPressed,
          onLongPress: onLongPress,
          isLoading: getInheritedIsLoading(context) ?? isLoading,
          rtl: getInheritedRtl(context) ?? rtl,
          text: text!,
          authIcon: getIcon(),
          style: getButtonStyle()?.replace(getInheritedStyle(context)),
        );
    }
  }

  bool? getInheritedIsLoading(BuildContext context) {
    if (InheritedAuthButton.of(context) != null) {
      return InheritedAuthButton.of(context)!.isLoading;
    }
    return null;
  }

  bool? getInheritedRtl(BuildContext context) {
    if (InheritedAuthButton.of(context) != null) {
      return InheritedAuthButton.of(context)!.rtl;
    }
    return null;
  }

  AuthButtonStyle? getInheritedStyle(BuildContext context) {
    if (InheritedAuthButton.of(context) != null) {
      if (style!.buttonType == AuthButtonType.icon) {
        return InheritedAuthButton.of(context)!.onIcon;
      } else if (style!.buttonType == AuthButtonType.secondary) {
        return InheritedAuthButton.of(context)!.onSecondary;
      }
      return InheritedAuthButton.of(context)!.style;
    }
    return null;
  }
}
