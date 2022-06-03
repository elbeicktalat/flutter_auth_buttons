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
    super.materialStyle,
  });

  @override
  ButtonStyle? getMaterialStyle(BuildContext context) {
    return ButtonStyle(
      textStyle: MaterialStateProperty.resolveWith(
        (states) =>
            materialStyle?.textStyle?.resolve(states) ??
            _inheritedMaterialStyle(context)?.textStyle?.resolve(states) ??
            resolveTextStyle(states),
      ),
      backgroundColor: MaterialStateProperty.resolveWith(
        (states) =>
            materialStyle?.backgroundColor?.resolve(states) ??
            _inheritedMaterialStyle(context)
                ?.backgroundColor
                ?.resolve(states) ??
            resolveBackgroundColor(states),
      ),
      foregroundColor: MaterialStateProperty.resolveWith(
        (states) =>
            materialStyle?.foregroundColor?.resolve(states) ??
            _inheritedMaterialStyle(context)
                ?.foregroundColor
                ?.resolve(states) ??
            resolveForegroundColor(states),
      ),
      overlayColor: MaterialStateProperty.resolveWith(
        (states) =>
            materialStyle?.overlayColor?.resolve(states) ??
            _inheritedMaterialStyle(context)?.overlayColor?.resolve(states) ??
            resolveOverlayColor(states),
      ),
      shadowColor: MaterialStateProperty.resolveWith(
        (states) =>
            materialStyle?.shadowColor?.resolve(states) ??
            _inheritedMaterialStyle(context)?.shadowColor?.resolve(states) ??
            resolveShadowColor(states),
      ),
      surfaceTintColor: MaterialStateProperty.resolveWith(
        (states) =>
            materialStyle?.surfaceTintColor?.resolve(states) ??
            _inheritedMaterialStyle(context)
                ?.surfaceTintColor
                ?.resolve(states) ??
            resolveSurfaceTintColor(states),
      ),
      elevation: MaterialStateProperty.resolveWith(
        (states) =>
            materialStyle?.elevation?.resolve(states) ??
            _inheritedMaterialStyle(context)?.elevation?.resolve(states) ??
            resolveElevation(states),
      ),
      padding: MaterialStateProperty.resolveWith(
        (states) =>
            materialStyle?.padding?.resolve(states) ??
            _inheritedMaterialStyle(context)?.padding?.resolve(states) ??
            resolvePadding(states),
      ),
      minimumSize: MaterialStateProperty.resolveWith(
        (states) =>
            materialStyle?.minimumSize?.resolve(states) ??
            _inheritedMaterialStyle(context)?.minimumSize?.resolve(states) ??
            resolveMinimumSize(states),
      ),
      fixedSize: MaterialStateProperty.resolveWith(
        (states) =>
            materialStyle?.fixedSize?.resolve(states) ??
            _inheritedMaterialStyle(context)?.fixedSize?.resolve(states) ??
            resolveFixedSize(states),
      ),
      maximumSize: MaterialStateProperty.resolveWith(
        (states) =>
            materialStyle?.maximumSize?.resolve(states) ??
            _inheritedMaterialStyle(context)?.maximumSize?.resolve(states) ??
            resolveMaximumSize(states),
      ),
      side: MaterialStateProperty.resolveWith(
        (states) =>
            materialStyle?.side?.resolve(states) ??
            _inheritedMaterialStyle(context)?.side?.resolve(states) ??
            resolveSide(states),
      ),
      shape: MaterialStateProperty.resolveWith(
        (states) =>
            materialStyle?.shape?.resolve(states) ??
            _inheritedMaterialStyle(context)?.shape?.resolve(states) ??
            resolveShape(states),
      ),
      mouseCursor: MaterialStateProperty.resolveWith(
        (states) =>
            materialStyle?.mouseCursor?.resolve(states) ??
            _inheritedMaterialStyle(context)?.mouseCursor?.resolve(states) ??
            resolveMouseCursor(states),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (style!.buttonType) {
      case AuthButtonType.icon:
        return AuthIconButton(
          onPressed: onPressed,
          onLongPress: onLongPress,
          materialStyle: getMaterialStyle(context),
          isLoading: _getInheritedIsLoading(context) ?? isLoading,
          rtl: _getInheritedRtl(context) ?? rtl,
          authIcon: getIcon(context),
          isDark: isDark,
          style: _iconStyle(context),
        );
      case AuthButtonType.secondary:
        return AuthSecondaryButton(
          onPressed: onPressed,
          onLongPress: onLongPress,
          materialStyle: getMaterialStyle(context),
          isLoading: _getInheritedIsLoading(context) ?? isLoading,
          rtl: _getInheritedRtl(context) ?? rtl,
          text: text!,
          authIcon: getIcon(context),
          isDark: isDark,
          style: _secondaryStyle(context),
        );
      default:
        return AuthDefaultButton(
          onPressed: onPressed,
          onLongPress: onLongPress,
          materialStyle: getMaterialStyle(context),
          isLoading: _getInheritedIsLoading(context) ?? isLoading,
          rtl: _getInheritedRtl(context) ?? rtl,
          text: text!,
          authIcon: getIcon(context),
          isDark: isDark,
          style: _defaultStyle(context),
        );
    }
  }

  AuthButtonStyle _iconStyle(BuildContext context) {
    return getButtonStyle()!.merge(
      const AuthButtonStyle(
        width: 50.0,
        height: 50.0,
        padding: EdgeInsets.zero,
        borderRadius: 8.0,
      ).merge(_getInheritedStyle(context)),
    );
  }

  AuthButtonStyle _secondaryStyle(BuildContext context) {
    return getButtonStyle()!.merge(
      AuthButtonStyle(
        borderRadius: 8.0,
        padding: const EdgeInsets.only(right: 16.0),
        iconBackground: enabled
            ? isDark
                ? Colors.white.withOpacity(.4)
                : Colors.white
            : Colors.black12,
      ).merge(_getInheritedStyle(context)),
    );
  }

  AuthButtonStyle _defaultStyle(BuildContext context) {
    return getButtonStyle()!.merge(
      const AuthButtonStyle(
        borderRadius: 8.0,
      ).merge(_getInheritedStyle(context)),
    );
  }

  bool? _getInheritedIsLoading(BuildContext context) {
    if (InheritedAuthButton.of(context) != null) {
      return InheritedAuthButton.of(context)!.isLoading;
    }
    return null;
  }

  bool? _getInheritedRtl(BuildContext context) {
    if (InheritedAuthButton.of(context) != null) {
      return InheritedAuthButton.of(context)!.rtl;
    }
    return null;
  }

  AuthButtonStyle? _getInheritedStyle(BuildContext context) {
    if (InheritedAuthButton.of(context) != null) {
      return InheritedAuthButton.of(context)!.style;
    }
    return null;
  }

  ButtonStyle? _inheritedMaterialStyle(BuildContext context) {
    if (InheritedAuthButton.of(context) != null) {
      return InheritedAuthButton.of(context)!.materialStyle;
    }
    return null;
  }
}
