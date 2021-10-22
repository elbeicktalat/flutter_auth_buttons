// Copyright 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:auth_buttons/src/shared/auth_button_style.dart';
import 'package:flutter/material.dart';

class ButtonContents extends StatelessWidget {
  const ButtonContents({
    Key? key,
    this.text = '',
    this.iconUrl = '',
    this.darkMode = false,
    this.rtl = false,
    this.isLoading = false,
    this.buttonType,
    this.style,
  }) : super(key: key);

  final String text;
  final String iconUrl;
  final bool darkMode;
  final bool rtl;
  final bool isLoading;
  final AuthButtonType? buttonType;
  final AuthButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return Row(
      key: key,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      textDirection: rtl ? TextDirection.rtl : null,
      children: <Widget>[
        Container(
          padding: (buttonType == AuthButtonType.secondary)
              ? const EdgeInsets.all(4.0)
              : null,
          decoration: BoxDecoration(
            color: style!.iconBackground,
            borderRadius: BorderRadius.circular(style!.borderRadius ?? 8.0),
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
              : Image(
                  image: ExactAssetImage(
                    iconUrl,
                  ),
                  width: style!.iconSize,
                  height: style!.iconSize,
                ),
        ),
        SizedBox(
          width: style!.separator,
        ),
        Text(
          text,
          style: style!.textStyle,
        ),
      ],
    );
  }
}
