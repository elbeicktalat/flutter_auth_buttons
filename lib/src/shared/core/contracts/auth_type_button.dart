// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:flutter/material.dart';

abstract class AuthTypeButton extends StatelessWidget {
  const AuthTypeButton({
    Key? key,
    required this.onPressed,
    required this.onLongPress,
    required this.style,
    required this.darkMode,
    required this.isLoading,
    required this.rtl,
    required this.authIcon,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final AuthButtonStyle? style;
  final bool darkMode;
  final bool isLoading;
  final bool rtl;
  final AuthIcon authIcon;

  /// {@macro getIconUrl}
  AuthIcon getIcon();

  @override
  Widget build(BuildContext context);
}
