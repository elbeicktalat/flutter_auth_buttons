// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';

class SharedButton extends StatelessWidget {
  const SharedButton({
    Key? key,
    required this.onPressed,
    required this.onLongPress,
    required this.child,
    required this.style,
  }) : super(key: key);

  /// {@macro onPressed}
  final VoidCallback? onPressed;

  /// {@macro onLongPress}
  final VoidCallback? onLongPress;

  ///[child] is A Widget which will be put inside of this widget.
  final Widget child;

  /// {@macro style}
  final AuthButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: key,
      width: style!.width,
      height: style!.height,
      child: ElevatedButton(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        child: child,
        style: ButtonStyle(
          padding: MaterialStateProperty.all(style!.padding),
          backgroundColor: MaterialStateProperty.all(style!.buttonColor),
          elevation: MaterialStateProperty.all(style!.elevation),
          side: MaterialStateProperty.all(
            BorderSide(
              width: style!.borderWidth ?? 2.0,
              color: style!.borderColor ?? Colors.transparent,
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(style!.borderRadius ?? 0.0),
            ),
          ),
          shadowColor: MaterialStateProperty.all(style!.shadowColor),
          overlayColor: MaterialStateProperty.all(style!.splashColor),
        ),
      ),
    );
  }
}
