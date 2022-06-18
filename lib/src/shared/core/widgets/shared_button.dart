// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/auth_buttons.dart';
import 'package:auth_buttons/src/shared/core/widgets/button_content.dart';
import 'package:flutter/material.dart';

///[SharedButton] The button common for all auth buttons,
/// no mater **buttonType** all buttons use this.
class SharedButton extends StatelessWidget {
  const SharedButton({
    super.key,
    required this.onPressed,
    required this.onLongPress,
    required this.child,
    required this.style,
    required this.isDark,
  });

  /// {@macro onPressed}
  final VoidCallback? onPressed;

  /// {@macro onLongPress}
  final VoidCallback? onLongPress;

  ///[child] is A Widget which will be put inside of this widget.
  final ButtonContent child;

  /// {@macro style}
  final AuthButtonStyle? style;

  /// {@macro isDark}
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: key,
      padding: style!.margin ?? EdgeInsets.zero,
      child: ElevatedButton(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        child: child,
        style: ButtonStyle(
          padding: style!.getPadding(context),
          backgroundColor: style!.getBackgroundColor(context),
          foregroundColor: style!.getForegroundColor(context),
          textStyle: style!.getTextStyle(context),
          elevation: style!.getElevation(context),
          shadowColor: style!.getShadowColor(context),
          overlayColor: style!.getOverlayColor(context),
          minimumSize: style!.getMinimumSize(context),
          side: style!.getSide(context),
          shape: style!.getShape(context),
          visualDensity: style!.visualDensity,
          tapTargetSize: style!.tapTargetSize,
        ),
      ),
    );
  }
}
