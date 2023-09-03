// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/utils/auth_type.dart';
import 'package:flutter/material.dart';

AuthIcon resolvedIconUrl({
  required AuthButtonType? buttonType,
  required AuthIconType? iconType,
  required List<String> iconsPath,
  required double? iconSize,
  required Color? iconColor,
  required ButtonStyle? materialStyle,
  required bool canBeWhite,
  required bool isDark,
  required bool enabled,
}) {
  final Set<MaterialState> states = <MaterialState>{MaterialState.selected};
  final Color? buttonColor = materialStyle?.backgroundColor?.resolve(states);
  bool buttonIsColored = false;

  if (buttonColor != Colors.white || buttonColor != const Color(0xffffffff)) {
    buttonIsColored = true;
  }

  Color? color = iconColor ?? materialStyle?.foregroundColor?.resolve(states);

  if (iconColor == null) {
    color = null;
  }

  if (canBeWhite &&
      buttonIsColored &&
      buttonType != AuthButtonType.secondary &&
      iconType == null) {
    color = iconColor ?? Colors.white;
  }

  if (!enabled) {
    color = AuthColors.disabledContent;
  }

  //for secondary buttons.
  if (buttonType == AuthButtonType.secondary) {
    if (iconType == AuthIconType.outlined) {
      return AuthIcon(iconPath: iconsPath[1], color: color, iconSize: iconSize);
    }
    if (iconType == AuthIconType.secondary) {
      return AuthIcon(
        iconPath: iconsPath[2],
        color: color,
        iconSize: iconSize,
      );
    }
    return AuthIcon(iconPath: iconsPath[0], color: color, iconSize: iconSize);
  }

  //for default & icon buttons.
  if (iconType == AuthIconType.outlined) {
    return AuthIcon(iconPath: iconsPath[1], color: color, iconSize: iconSize);
  }
  if (iconType == AuthIconType.secondary) {
    return AuthIcon(iconPath: iconsPath[2], color: color, iconSize: iconSize);
  }
  return AuthIcon(iconPath: iconsPath[0], color: color, iconSize: iconSize);
}
