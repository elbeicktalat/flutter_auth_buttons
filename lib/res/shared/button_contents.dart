// Copyright 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// @dart=2.7

import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';

class ButtonContents extends StatelessWidget {
  final Key key;
  final double iconSize;
  final String text;
  final String iconUrl;
  final TextStyle textStyle;
  final bool darkMode;
  final double separator;
  final Color textColor;
  final bool rtl;
  final double borderRadius;
  final Color iconBackground;
  final AuthButtonStyle style;

  ButtonContents({
    this.key,
    this.iconSize,
    this.text = '',
    this.iconUrl,
    this.textStyle,
    this.darkMode = false,
    this.separator,
    this.textColor,
    this.rtl = false,
    this.borderRadius,
    this.iconBackground,
    this.style,
  })  : assert(darkMode != null),
        assert(rtl != null);

  @override
  Widget build(BuildContext context) {
    return Row(
      key: key,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      textDirection: rtl ? TextDirection.rtl : null,
      children: [
        Container(
          key: key,
          padding:
              (style == AuthButtonStyle.secondary) ? EdgeInsets.all(4.0) : null,
          decoration: BoxDecoration(
            color: iconBackground,
            borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
          ),
          child: Image(
            key: key,
            image: ExactAssetImage(
              iconUrl,
            ),
            width: iconSize,
            height: iconSize,
          ),
        ),
        SizedBox(
          key: key,
          width: separator,
        ),
        Text(
          text,
          style: textStyle,
          key: key,
        ),
      ],
    );
  }
}
