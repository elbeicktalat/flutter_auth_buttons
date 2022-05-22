// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/base/widgets/auth_default_button.dart';
import 'package:auth_buttons/src/shared/base/widgets/auth_icon_button.dart';
import 'package:auth_buttons/src/shared/base/widgets/auth_secondary_button.dart';
import 'package:auth_buttons/src/shared/core/contracts/auth_button_style_button.dart';
import 'package:auth_buttons/src/shared/core/widgets/inherited_auth_button.dart';
import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:flutter/material.dart';

abstract class BaseAuthButton extends AuthButtonStyleButton {
  const BaseAuthButton({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    AuthButtonStyle? style,
    String? text,
    bool darkMode = false,
    bool isLoading = false,
    bool rtl = false,
  }) : super(
          key: key,
          onPressed: onPressed,
          onLongPress: onLongPress,
          style: style ?? const AuthButtonStyle(),
          text: text,
          darkMode: darkMode,
          isLoading: isLoading,
          rtl: rtl,
        );

  @override
  Color getButtonColor() {
    if (!enabled) {
      return darkMode ? const Color(0xff5a5a5a) : AuthColors.disabled;
    }
    return darkMode ? AuthColors.darkMode : Colors.white;
  }

  @override
  Color? getIconColor() {
    if (!enabled) return AuthColors.disabledContent;
    return null;
  }

  @override
  Color? getIconBackground() {
    if (!enabled) return const Color(0xffd2d2d2);
    if (style!.buttonType == AuthButtonType.secondary) {
      return darkMode ? Colors.black12 : Colors.white;
    }
    return null;
  }

  @override
  Color? getProgressIndicatorValueColor() => Colors.blue;

  @override
  TextStyle getTextStyle() {
    if (style!.buttonType == AuthButtonType.secondary) {
      return style!.textStyle ??
          const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.50,
          );
    }
    return style!.textStyle ??
        TextStyle(
          color: darkMode ? Colors.white : Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.50,
        );
  }

  @override
  Widget build(BuildContext context) {
    switch (style!.buttonType) {
      case AuthButtonType.icon:
        return AuthIconButton(
          onPressed: onPressed,
          onLongPress: onLongPress,
          isLoading: isLoading,
          rtl: rtl,
          authIcon: getIcon(),
          style: getButtonStyle()!.replace(
            AuthButtonStyle(
              buttonColor: getButtonColor(),
              textStyle: getTextStyle(),
              iconColor: getIconColor(),
              progressIndicatorValueColor: getProgressIndicatorValueColor(),
            ).replace(getInheritedStyle(context)),
          ),
        );
      case AuthButtonType.secondary:
        return AuthSecondaryButton(
          onPressed: onPressed,
          onLongPress: onLongPress,
          isLoading: isLoading,
          rtl: rtl,
          text: text!,
          authIcon: getIcon(),
          style: getButtonStyle()!.replace(
            AuthButtonStyle(
              padding: style!.padding ?? const EdgeInsets.only(right: 16.0),
              buttonColor: getButtonColor(),
              iconBackground: getIconBackground(),
              textStyle: getTextStyle(),
              iconColor: getIconColor(),
              progressIndicatorValueColor: getProgressIndicatorValueColor(),
            ).replace(getInheritedStyle(context)),
          ),
        );
      default:
        return AuthDefaultButton(
          onPressed: onPressed,
          onLongPress: onLongPress,
          isLoading: getInheritedIsLoading(context) ?? isLoading,
          rtl: getInheritedRtl(context) ?? rtl,
          text: text!,
          authIcon: getIcon(),
          style: getButtonStyle()!.replace(
            AuthButtonStyle(
              buttonColor: getButtonColor(),
              textStyle: getTextStyle(),
              iconColor: getIconColor(),
              progressIndicatorValueColor: getProgressIndicatorValueColor(),
            ).replace(getInheritedStyle(context)),
          ),
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
