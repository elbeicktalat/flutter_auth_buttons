// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/auth_button_style.dart';
import 'package:auth_buttons/src/shared/base/widgets/auth_default_button.dart';
import 'package:auth_buttons/src/shared/base/widgets/auth_icon_button.dart';
import 'package:auth_buttons/src/shared/base/widgets/auth_secondary_button.dart';
import 'package:auth_buttons/src/shared/core/contracts/auth_button_style_button.dart';
import 'package:auth_buttons/src/shared/core/widgets/inherited_auth_button.dart';
import 'package:auth_buttons/src/utils/auth_type.dart';
import 'package:flutter/material.dart';

abstract class AuthButton extends AuthButtonStyleButton {
  const AuthButton({
    super.key,
    super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.focusNode,
    super.autofocus,
    super.style = const AuthButtonStyle(),
    super.text,
    super.themeMode = ThemeMode.system,
    super.isLoading = false,
    super.textDirection = TextDirection.ltr,
    super.materialStyle,
  });

  @override
  ButtonStyle? getMaterialStyle(BuildContext context) {
    return ButtonStyle(
      textStyle: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) =>
            materialStyle?.textStyle?.resolve(states) ??
            _inheritedMaterialStyle(context)?.textStyle?.resolve(states) ??
            resolveTextStyle(states),
      ),
      backgroundColor: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) =>
            materialStyle?.backgroundColor?.resolve(states) ??
            _inheritedMaterialStyle(context)
                ?.backgroundColor
                ?.resolve(states) ??
            resolveBackgroundColor(states),
      ),
      foregroundColor: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) =>
            materialStyle?.foregroundColor?.resolve(states) ??
            _inheritedMaterialStyle(context)
                ?.foregroundColor
                ?.resolve(states) ??
            resolveForegroundColor(states),
      ),
      overlayColor: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) =>
            materialStyle?.overlayColor?.resolve(states) ??
            _inheritedMaterialStyle(context)?.overlayColor?.resolve(states) ??
            resolveOverlayColor(states),
      ),
      shadowColor: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) =>
            materialStyle?.shadowColor?.resolve(states) ??
            _inheritedMaterialStyle(context)?.shadowColor?.resolve(states) ??
            resolveShadowColor(states),
      ),
      surfaceTintColor: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) =>
            materialStyle?.surfaceTintColor?.resolve(states) ??
            _inheritedMaterialStyle(context)
                ?.surfaceTintColor
                ?.resolve(states) ??
            resolveSurfaceTintColor(states),
      ),
      elevation: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) =>
            materialStyle?.elevation?.resolve(states) ??
            _inheritedMaterialStyle(context)?.elevation?.resolve(states) ??
            resolveElevation(states),
      ),
      padding: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) =>
            materialStyle?.padding?.resolve(states) ??
            _inheritedMaterialStyle(context)?.padding?.resolve(states) ??
            resolvePadding(states),
      ),
      minimumSize: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) =>
            materialStyle?.minimumSize?.resolve(states) ??
            _inheritedMaterialStyle(context)?.minimumSize?.resolve(states) ??
            resolveMinimumSize(states),
      ),
      fixedSize: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) =>
            materialStyle?.fixedSize?.resolve(states) ??
            _inheritedMaterialStyle(context)?.fixedSize?.resolve(states) ??
            resolveFixedSize(states),
      ),
      maximumSize: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) =>
            materialStyle?.maximumSize?.resolve(states) ??
            _inheritedMaterialStyle(context)?.maximumSize?.resolve(states) ??
            resolveMaximumSize(states),
      ),
      side: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) =>
            materialStyle?.side?.resolve(states) ??
            _inheritedMaterialStyle(context)?.side?.resolve(states) ??
            resolveSide(states),
      ),
      shape: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) =>
            materialStyle?.shape?.resolve(states) ??
            _inheritedMaterialStyle(context)?.shape?.resolve(states) ??
            resolveShape(states),
      ),
      mouseCursor: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) =>
            materialStyle?.mouseCursor?.resolve(states) ??
            _inheritedMaterialStyle(context)?.mouseCursor?.resolve(states) ??
            resolveMouseCursor(states),
      ),
    );
  }

  @override
  Color? getProgressIndicatorColor() => Colors.blue;

  @override
  Widget build(BuildContext context) {
    switch (style.buttonType) {
      case AuthButtonType.icon:
        return AuthIconButton(
          onPressed: onPressed,
          onLongPress: onLongPress,
          onHover: onHover,
          onFocusChange: onFocusChange,
          focusNode: focusNode,
          autofocus: autofocus,
          materialStyle: getMaterialStyle(context),
          isLoading: isLoading,
          authIcon: getIcon(context),
          isDark: isDark,
          style: _iconStyle(context),
        );
      case AuthButtonType.secondary:
        return AuthSecondaryButton(
          onPressed: onPressed,
          onLongPress: onLongPress,
          onHover: onHover,
          onFocusChange: onFocusChange,
          focusNode: focusNode,
          autofocus: autofocus,
          materialStyle: getMaterialStyle(context),
          isLoading: isLoading,
          textDirection: _getInheritedTextDirection(context) ?? textDirection,
          text: text!,
          authIcon: getIcon(context),
          isDark: isDark,
          style: _secondaryStyle(context),
        );
      default:
        return AuthDefaultButton(
          onPressed: onPressed,
          onLongPress: onLongPress,
          onHover: onHover,
          onFocusChange: onFocusChange,
          focusNode: focusNode,
          autofocus: autofocus,
          materialStyle: getMaterialStyle(context),
          isLoading: isLoading,
          textDirection: _getInheritedTextDirection(context) ?? textDirection,
          text: text!,
          authIcon: getIcon(context),
          isDark: isDark,
          style: _defaultStyle(context),
        );
    }
  }

  AuthButtonStyle _iconStyle(BuildContext context) {
    return getButtonStyle()!.merge(
      AuthButtonStyle(
        width: 50.0,
        height: 50.0,
        padding: EdgeInsets.zero,
        borderRadius: 8.0,
        progressIndicatorValueColor: getProgressIndicatorColor(),
        progressIndicatorColor: getProgressIndicatorColor()?.withOpacity(.3),
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
                ? Colors.grey.withOpacity(.2)
                : Colors.white
            : Colors.black12,
        progressIndicatorValueColor: getProgressIndicatorColor(),
        progressIndicatorColor: Colors.white,
      ).merge(_getInheritedStyle(context)),
    );
  }

  AuthButtonStyle _defaultStyle(BuildContext context) {
    return getButtonStyle()!.merge(
      AuthButtonStyle(
        borderRadius: 8.0,
        progressIndicatorValueColor: getProgressIndicatorColor(),
        progressIndicatorColor: getProgressIndicatorColor()?.withOpacity(.3),
      ).merge(_getInheritedStyle(context)),
    );
  }

  TextDirection? _getInheritedTextDirection(BuildContext context) {
    if (InheritedAuthButton.of(context) != null) {
      return InheritedAuthButton.of(context)!.textDirection;
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
