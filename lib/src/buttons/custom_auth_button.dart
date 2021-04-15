// Copyright 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/auth_button.dart';
import 'package:auth_buttons/src/shared/auth_button_style.dart';
import 'package:flutter/material.dart';

class CustomAuthButton extends AuthButton {
  const CustomAuthButton({
    Key? key,
    required VoidCallback onPressed,
    VoidCallback? onLongPress,
    required String text,
    required this.icon,
    bool darkMode = false,
    bool rtl = false,
    bool isLoading = false,
    AuthButtonStyle? style,
  }) : super(
          key: key,
          onPressed: onPressed,
          onLongPress: onLongPress,
          text: text,
          darkMode: darkMode,
          rtl: rtl,
          isLoading: isLoading,
          style: style,
        );

  ///[icon] Define the icon.
  final String icon;

  @override
  String getIconUrl() {
    return icon;
  }
}
