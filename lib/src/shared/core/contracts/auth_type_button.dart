// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/auth_button_style.dart';
import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:flutter/material.dart';

/// The core interface of all buttons types.
///
/// See also:
///
///  * [AuthDefaultButton], the default auth button type.
///  * [AuthSecondaryButton], the secondary auth button type.
///  * [AuthIconButton], the icon auth button type.
///
abstract class AuthTypeButton extends StatelessWidget {
  const AuthTypeButton({
    super.key,
    required this.onPressed,
    required this.onLongPress,
    required this.onHover,
    required this.onFocusChange,
    required this.focusNode,
    required this.autofocus,
    required this.style,
    required this.isLoading,
    this.textDirection = TextDirection.ltr,
    required this.authIcon,
    required this.materialStyle,
    required this.isDark,
  });

  /// {@macro onPressed}
  final VoidCallback? onPressed;

  /// {@macro onLongPress}
  final VoidCallback? onLongPress;

  /// {@macro onHover}
  final ValueChanged<bool>? onHover;

  /// {@macro onFocusChange}
  final ValueChanged<bool>? onFocusChange;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// {@macro autofocus}
  final bool? autofocus;

  /// {@macro style}
  final AuthButtonStyle? style;

  /// {@macro isLoading}
  final bool isLoading;

  /// {@macro textDirection}
  final TextDirection textDirection;

  /// {@template authIcon}
  ///
  /// The widget which defines the icon to display.
  ///
  /// {@endtemplate}
  final AuthIcon authIcon;

  /// {@macro materialStyle}
  final ButtonStyle? materialStyle;

  /// {@macro isDark}
  final bool isDark;

  /// {@macro getIcon}
  AuthIcon getIcon();

  @override
  Widget build(BuildContext context);
}
