// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:flutter/material.dart';

abstract class AuthTypeButton extends StatelessWidget {
  const AuthTypeButton({
    super.key,
    required this.onPressed,
    required this.onLongPress,
    required this.style,
    required this.isLoading,
    required this.rtl,
    required this.authIcon,
    required this.theme,
    required this.isDark,
  });

  /// {@macro onPressed}
  final VoidCallback? onPressed;

  /// {@macro onLongPress}
  final VoidCallback? onLongPress;

  /// {@macro style}
  final AuthButtonStyle? style;

  /// {@macro isLoading}
  final bool isLoading;

  /// {@macro rtl}
  final bool rtl;

  /// {@macro authIcon}
  final AuthIcon authIcon;

  /// {@macro theme}
  final ThemeData theme;

  final bool isDark;

  /// {@macro getIcon}
  AuthIcon getIcon();

  @override
  Widget build(BuildContext context);
}
