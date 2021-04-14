// Copyright 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// @dart=2.12

import 'package:auth_buttons/src/shared/auth_style.dart';
import 'package:flutter/material.dart';

class ButtonContents extends StatelessWidget {
  const ButtonContents({
    this.key,
    this.iconSize,
    this.text = '',
    this.iconUrl = '',
    this.textStyle,
    this.darkMode = false,
    this.separator,
    this.textColor,
    this.rtl = false,
    this.borderRadius,
    this.iconBackground,
    this.style,
    this.isLoading = false,
    this.progressIndicatorColor,
    this.progressIndicatorValueColor,
    this.progressIndicatorStrokeWidth = 4.0,
    this.progressIndicatorValue,
  });

  final Key? key;
  final double? iconSize;
  final String text;
  final String iconUrl;
  final TextStyle? textStyle;
  final bool darkMode;
  final double? separator;
  final Color? textColor;
  final bool rtl;
  final double? borderRadius;
  final Color? iconBackground;
  final AuthButtonStyleType? style;
  final bool isLoading;
  final Color? progressIndicatorColor;
  final Color? progressIndicatorValueColor;
  final double? progressIndicatorStrokeWidth;
  final double? progressIndicatorValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      key: key,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      textDirection: rtl ? TextDirection.rtl : null,
      children: <Widget>[
        Container(
          padding: (style == AuthButtonStyleType.secondary)
              ? const EdgeInsets.all(4.0)
              : null,
          decoration: BoxDecoration(
            color: iconBackground,
            borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
          ),
          child: isLoading
              ? CircularProgressIndicator(
                  backgroundColor: progressIndicatorColor,
                  strokeWidth: progressIndicatorStrokeWidth ?? 4.0,
                  valueColor: AlwaysStoppedAnimation<Color?>(
                      progressIndicatorValueColor),
                  value: progressIndicatorValue,
                )
              : Image(
                  image: ExactAssetImage(
                    iconUrl,
                  ),
                  width: iconSize,
                  height: iconSize,
                ),
        ),
        SizedBox(
          width: separator,
        ),
        Text(
          text,
          style: textStyle,
        ),
      ],
    );
  }
}
