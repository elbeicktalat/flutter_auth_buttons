// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:flutter/material.dart';

AuthIcon resolvedIconUrl({
  required AuthButtonType? buttonType,
  required AuthIconType? iconType,
  required Color? buttonColor,
  required List<String> iconUrl,
  required Color? iconColor,
  required double? iconSize,
  bool darkMode = false,
}) {
  bool _buttonIsColored = false;
  if (buttonColor != Colors.white || buttonColor != Color(0xffffffff)) {
    _buttonIsColored = true;
  }

  Color? _color = iconColor;
  if (_buttonIsColored && iconType != AuthIconType.secondary) {
    _color = iconColor ?? Colors.white;
  }

  if (!darkMode && buttonType == AuthButtonType.secondary) {
    _color = iconColor;
  }

  if (iconType == AuthIconType.secondary) {
    _color = null;
  }

  if (_buttonIsColored && buttonType != AuthButtonType.secondary) {
    if (iconType == AuthIconType.outlined) {
      return AuthIcon(iconUrl[1], color: _color, iconSize: iconSize);
    }
    if (iconType == AuthIconType.secondary) {
      return AuthIcon(iconUrl[2], color: _color, iconSize: iconSize);
    }
    return AuthIcon(iconUrl[0], color: _color, iconSize: iconSize);
  }

  //for secondary buttons.
  if (buttonType == AuthButtonType.secondary) {
    if (iconType == AuthIconType.outlined) {
      return AuthIcon(iconUrl[1], color: _color, iconSize: iconSize);
    }
    if (iconType == AuthIconType.secondary) {
      return AuthIcon(iconUrl[2], color: _color, iconSize: iconSize);
    }
    return AuthIcon(iconUrl[0], color: _color, iconSize: iconSize);
  }

  //for default & icon buttons.
  if (iconType == AuthIconType.outlined) {
    return AuthIcon(iconUrl[1], color: _color, iconSize: iconSize);
  }
  if (iconType == AuthIconType.secondary) {
    return AuthIcon(iconUrl[2], color: _color, iconSize: iconSize);
  }
  return AuthIcon(iconUrl[0], color: _color, iconSize: iconSize);
}
