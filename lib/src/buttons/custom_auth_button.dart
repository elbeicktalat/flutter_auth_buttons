// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:auth_buttons/src/shared/dist/auth_button.dart';
import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:flutter/material.dart';

/// Allows you to create your custom authentication button,
/// which will be similar to others in auth_button library.
///
/// You have to provide your own colors and other stuff.
class CustomAuthButton extends AuthButton {
  const CustomAuthButton({
    Key? key,
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    required String text,
    required this.iconUrl,
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

  ///[iconUrl] Define the iconUrl.
  final String iconUrl;

  @override
  AuthIcon getIcon() {
    return AuthIcon(
      iconUrl,
      color: style!.iconColor,
      iconSize: style!.iconSize,
    );
  }

  @override
  AuthButtonStyle? getButtonStyle() {
    return style!.merge(
      const AuthButtonStyle(
        separator: 10.0,
        height: 40.0,
        borderRadius: 8.0,
      ),
    );
  }
}
