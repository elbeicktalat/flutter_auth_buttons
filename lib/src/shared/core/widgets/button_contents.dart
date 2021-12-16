// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:flutter/material.dart';

class ButtonContents extends StatelessWidget {
  const ButtonContents({
    Key? key,
    this.text = '',
    required this.authIcon,
    this.darkMode = false,
    this.rtl = false,
    this.isLoading = false,
    this.style,
  }) : super(key: key);

  /// {@macro text}
  final String text;

  /// {@template authIcon}
  ///
  ///**[authIcon]** Define the icon to display.
  ///
  /// {@endtemplate}
  final AuthIcon authIcon;

  /// {@macro darkMode}
  final bool darkMode;

  /// {@macro rtl}
  final bool rtl;

  /// {@macro isLoading}
  final bool isLoading;

  /// {@macro style}
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
              : authIcon,
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
