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
  CustomAuthButton({
    super.key,
    super.onPressed,
    super.onLongPress,
    super.text,
    required this.iconUrl,
    @Deprecated(
      'Use ThemeMode instead. '
      'This property has no more effect. '
      'This feature was deprecated after v3.0.0',
    )
        bool darkMode = false,
    @Deprecated(
      'Use TextDirection instead. '
      'This property has no more effect. '
      'This feature was deprecated after v3.0.0',
    )
        bool rtl = false,
    super.isLoading = false,
    super.style,
    super.materialStyle,
    super.themeMode,
    super.textDirection,
  }) : assert(
          iconUrl.isNotEmpty && !iconUrl.contains(' '),
          'iconUrl can\'t be blank',
        );

  ///[iconUrl] Define the iconUrl.
  final String iconUrl;

  @override
  AuthIcon getIcon(BuildContext context) {
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
