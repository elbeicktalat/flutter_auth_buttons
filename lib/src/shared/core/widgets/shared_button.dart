// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/auth_buttons.dart';
import 'package:auth_buttons/src/shared/core/widgets/button_content.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

///[SharedButton] The button common for all auth buttons,
/// no mater **buttonType** all buttons use this.
class SharedButton extends StatelessWidget {
  const SharedButton({
    required this.onPressed,
    required this.onLongPress,
    required this.onHover,
    required this.onFocusChange,
    required this.focusNode,
    required this.autofocus,
    required this.child,
    required this.style,
    required this.isDark,
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

  /// {@macro focusNode}
  final FocusNode? focusNode;

  /// {@macro autofocus}
  final bool? autofocus;

  ///[child] is A Widget which will be put inside of this widget.
  final ButtonContent child;

  /// {@macro style}
  final AuthButtonStyle style;

  /// {@macro isDark}
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: key,
      padding: style.margin ?? EdgeInsets.zero,
      child: ElevatedButton(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        focusNode: focusNode,
        autofocus: autofocus ?? false,
        style: ButtonStyle(
          padding: style.getPadding(context),
          backgroundColor: style.getBackgroundColor(context),
          foregroundColor: style.getForegroundColor(context),
          textStyle: style.getTextStyle(context),
          elevation: style.getElevation(context),
          shadowColor: style.getShadowColor(context),
          overlayColor: style.getOverlayColor(context),
          minimumSize: style.getMinimumSize(context),
          side: style.getSide(context),
          shape: style.getShape(context),
          visualDensity: style.visualDensity,
          tapTargetSize: style.tapTargetSize,
        ),
        child: child,
      ),
    );
  }

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
    properties.add(DiagnosticsProperty<bool>('isDark', isDark));
    // @formatter:on
  }
}
