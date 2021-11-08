// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/utils/auth_button_color.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:flutter/material.dart' show Color;

Color resolvedButtonColor({
  required ButtonColor buttonColor,
  AuthButtonType? buttonType,
  AuthIconType? iconType,
  bool enabled = true,
  bool darkMode = false,
}) {
  if (!enabled) return AuthColors.disabled;

  if (buttonType == AuthButtonType.secondary) {
    return darkMode
        ? AuthColors.darkMode
        : buttonColor.onSecondaryButton ?? buttonColor.color;
  }

  if (iconType == AuthIconType.secondary) {
    return darkMode
        ? AuthColors.darkMode
        : buttonColor.onSecondaryIcon ?? buttonColor.color;
  }

  return darkMode ? AuthColors.darkMode : buttonColor.color;
}
