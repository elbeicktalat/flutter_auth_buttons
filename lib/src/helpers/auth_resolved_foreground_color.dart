// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/auth_buttons.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:flutter/material.dart';

@immutable
class ForegroundColor {
  const ForegroundColor(
    this.main, {
    this.onSecondaryButton,
    this.onOtherIcons,
  });

  final Color main;
  final Color? onSecondaryButton;
  final Color? onOtherIcons;
}

Color resolvedForegroundColor({
  required ForegroundColor foregroundColor,
  required Set<MaterialState> states,
  required bool isDark,
  required AuthButtonType? buttonType,
  required AuthIconType? iconType,
}) {
  if (!states.contains(MaterialState.disabled)) {
    if (isDark) return Colors.grey.shade400;
    if (buttonType == AuthButtonType.secondary) {
      return foregroundColor.onSecondaryButton ?? foregroundColor.main;
    }
    if (iconType != null) {
      return foregroundColor.onOtherIcons ?? foregroundColor.main;
    }
    return foregroundColor.main;
  }
  return AuthColors.disabledContent;
}
