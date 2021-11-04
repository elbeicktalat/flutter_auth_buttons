// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

class ButtonContents extends StatelessWidget {
  const ButtonContents({
    Key? key,
    this.text = '',
    this.iconUrl = '',
    this.darkMode = false,
    this.rtl = false,
    this.isLoading = false,
    this.style,
    this.textStyle,
  }) : super(key: key);

  final String text;
  final String iconUrl;
  final bool darkMode;
  final bool rtl;
  final bool isLoading;
  final AuthButtonStyle? style;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      key: key,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      textDirection: rtl ? TextDirection.rtl : null,
      children: <Widget>[
        Container(
          padding: (style!.buttonType == AuthButtonType.secondary)
              ? const EdgeInsets.all(5.0)
              : null,
          decoration: BoxDecoration(
            color: style!.iconBackground,
            borderRadius: BorderRadius.circular(style!.borderRadius ?? 0.0),
          ),
          child: isLoading
              ? SizedBox(
                  width: style!.iconSize,
                  height: style!.iconSize,
                  child: CircularProgressIndicator(
                    backgroundColor: style!.progressIndicatorColor,
                    strokeWidth: style!.progressIndicatorStrokeWidth ?? 4.0,
                    valueColor: AlwaysStoppedAnimation<Color?>(
                        style!.progressIndicatorValueColor),
                    value: style!.progressIndicatorValue,
                  ),
                )
              : SvgPicture.asset(
                  iconUrl,
                  width: style!.iconSize,
                  height: style!.iconSize,
                ),
        ),
        SizedBox(
          width: style!.separator,
        ),
        Text(
          text,
          style: textStyle,
        ),
      ],
    );
  }
}
