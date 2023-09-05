// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/auth_button_style.dart';
import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:flutter/foundation.dart';
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
    required this.onPressed,
    required this.onLongPress,
    required this.onHover,
    required this.onFocusChange,
    required this.focusNode,
    required this.autofocus,
    required this.style,
    required this.isLoading,
    required this.authIcon,
    required this.materialStyle,
    required this.isDark,
    this.textDirection = TextDirection.ltr,
    super.key,
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
  final AuthButtonStyle style;

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

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    // @formatter:off
    super.debugFillProperties(properties);
    properties
        .add(ObjectFlagProperty<VoidCallback?>.has('onPressed', onPressed));
    properties
        .add(ObjectFlagProperty<VoidCallback?>.has('onLongPress', onLongPress));
    properties
        .add(ObjectFlagProperty<ValueChanged<bool>?>.has('onHover', onHover));
    properties.add(ObjectFlagProperty<ValueChanged<bool>?>.has(
        'onFocusChange', onFocusChange));
    properties.add(DiagnosticsProperty<FocusNode?>('focusNode', focusNode));
    properties.add(DiagnosticsProperty<bool?>('autofocus', autofocus));
    properties.add(DiagnosticsProperty<AuthButtonStyle>('style', style));
    properties.add(DiagnosticsProperty<bool>('isLoading', isLoading));
    properties.add(EnumProperty<TextDirection>('textDirection', textDirection));
    properties
        .add(DiagnosticsProperty<ButtonStyle?>('materialStyle', materialStyle));
    properties.add(DiagnosticsProperty<bool>('isDark', isDark));
    // @formatter:on
  }
}
