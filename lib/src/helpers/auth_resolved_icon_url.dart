// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:flutter/material.dart';

AuthIcon resolvedIconUrl({
  required AuthButtonType? buttonType,
  required AuthIconType? iconType,
  required List<String> iconsPath,
  required double? iconSize,
  required Color? iconColor,
  required ThemeData theme,
  required bool canBeWhite,
  required bool isDark,
  required bool enabled,
}) {
  bool _buttonIsColored = false;
  if (theme.colorScheme.surface != Colors.white ||
      theme.colorScheme.surface != const Color(0xffffffff)) {
    _buttonIsColored = true;
  }

  Color? _color = iconColor ?? theme.colorScheme.onSurface;

  if (iconColor == null) {
    _color = null;
  }

  if (iconColor == null &&
      buttonType == AuthButtonType.secondary &&
      isDark) {
    _color = iconColor ?? Colors.white;
  }

  if (canBeWhite &&
      _buttonIsColored &&
      buttonType != AuthButtonType.secondary) {
    _color = iconColor ?? Colors.white;
  }

  if (!enabled) {
    _color = AuthColors.disabledContent;
  }

  if (_buttonIsColored && buttonType != AuthButtonType.secondary) {
    if (iconType == AuthIconType.outlined) {
      return AuthIcon(iconsPath[1], color: _color, iconSize: iconSize);
    }
    if (iconType == AuthIconType.secondary) {
      return AuthIcon(iconsPath[2], color: _color, iconSize: iconSize);
    }
    return AuthIcon(iconsPath[0], color: _color, iconSize: iconSize);
  }

  //for secondary buttons.
  if (buttonType == AuthButtonType.secondary) {
    if (iconType == AuthIconType.outlined) {
      return AuthIcon(iconsPath[1], color: _color, iconSize: iconSize);
    }
    if (iconType == AuthIconType.secondary) {
      return AuthIcon(iconsPath[2], color: _color, iconSize: iconSize);
    }
    return AuthIcon(iconsPath[0], color: _color, iconSize: iconSize);
  }

  //for default & icon buttons.
  if (iconType == AuthIconType.outlined) {
    return AuthIcon(iconsPath[1], color: _color, iconSize: iconSize);
  }
  if (iconType == AuthIconType.secondary) {
    return AuthIcon(iconsPath[2], color: _color, iconSize: iconSize);
  }
  return AuthIcon(iconsPath[0], color: _color, iconSize: iconSize);
}
