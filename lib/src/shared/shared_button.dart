// Copyright 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// @dart=2.12

import 'package:flutter/material.dart';

class SharedButton extends StatelessWidget {
  const SharedButton({
    this.key,
    required this.onPressed,
    this.onLongPress,
    this.buttonColor,
    this.splashColor,
    this.borderColor,
    this.borderWidth,
    this.elevation,
    this.borderRadius,
    this.padding,
    required this.child,
    this.width,
    this.height,
    this.shadowColor,
  });

  final Key? key;

  ///[onPressed] is a void function well be called when the button pressed.
  final VoidCallback onPressed;

  ///[onPressed] is a void function well be called when the button
  /// is pressed for long time.
  final VoidCallback? onLongPress;

  ///[buttonColor] Define the button color, default value [Colors.white].
  final Color? buttonColor;

  ///[splashColor] Define the color when the button onPressed,
  ///the default value is [Colors.grey].
  final Color? splashColor;

  ///[borderColor] Define the color border around the button,
  ///the default value is [null].
  final Color? borderColor;

  ///[borderWidth] Define the border width around the button,
  ///the default value is [null].
  final double? borderWidth;

  ///[elevation] Define the elevation button, the default value is [2.0].
  final double? elevation;

  ///[borderRadius] Define the border radius, the default value is [0.0].
  final double? borderRadius;

  ///[padding] Define the button padding, the default value is [null].
  final EdgeInsets? padding;

  ///[child] .
  final Widget child;

  ///[width] Define the button width.
  final double? width;

  ///[height] Define the button height.
  final double? height;

  ///[shadowColor] Define the shadow color when the button is clicked.
  final Color? shadowColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: key,
      width: width,
      height: height,
      child: ElevatedButton(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        child: child,
        style: ButtonStyle(
          padding: MaterialStateProperty.all(padding),
          backgroundColor: MaterialStateProperty.all(buttonColor),
          elevation: MaterialStateProperty.all(elevation),
          side: MaterialStateProperty.all(
            BorderSide(
              width: borderWidth ?? 2.0,
              color: borderColor ?? Colors.transparent,
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 0.0),
            ),
          ),
          shadowColor: MaterialStateProperty.all(shadowColor),
          overlayColor: MaterialStateProperty.all(splashColor),
        ),
      ),
    );
  }
}
