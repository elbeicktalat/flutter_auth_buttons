// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:flutter/material.dart';

String resolvedIconUrl({
  AuthButtonType? buttonType,
  AuthIconType? iconType,
  Color? buttonColor,
  bool darkMode = false,
  required List<String> iconUrl,
  List<String>? whiteIconUrl,
}) {
  if (whiteIconUrl == null) {
    whiteIconUrl = iconUrl;
  }

  bool _colored = false;
  if (buttonColor != Colors.white || buttonColor != Color(0xffffffff)) {
    _colored = true;
  }

  if (_colored && buttonType != AuthButtonType.secondary) {
    if (iconType == AuthIconType.outlined) {
      return whiteIconUrl[1];
    }
    if (iconType == AuthIconType.secondary) {
      return iconUrl[2];
    }
    return whiteIconUrl[0];
  }

  //for secondary buttons.
  if (buttonType == AuthButtonType.secondary) {
    if (iconType == AuthIconType.outlined) {
      return darkMode ? whiteIconUrl[1] : iconUrl[1];
    }
    if (iconType == AuthIconType.secondary) {
      return iconUrl[2];
    }
    return darkMode ? whiteIconUrl[0] : iconUrl[0];
  }

  //for default & icon buttons.
  if (iconType == AuthIconType.outlined) {
    return darkMode ? whiteIconUrl[1] : iconUrl[1];
  }
  if (iconType == AuthIconType.secondary) {
    return iconUrl[2];
  }
  return darkMode ? whiteIconUrl[0] : iconUrl[0];
}
