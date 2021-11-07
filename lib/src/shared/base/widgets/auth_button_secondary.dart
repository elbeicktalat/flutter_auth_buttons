// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/core/contracts/auth_type_button.dart';
import 'package:auth_buttons/src/shared/core/widgets/button_contents.dart';
import 'package:auth_buttons/src/shared/core/widgets/shared_button.dart';
import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:flutter/material.dart';

class AuthButtonSecondary extends AuthTypeButton {
  AuthButtonSecondary({
    required VoidCallback? onPressed,
    required VoidCallback? onLongPress,
    required AuthButtonStyle? style,
    required bool darkMode,
    required bool isLoading,
    required bool rtl,
    required Color buttonColor,
    required String iconUrl,
    required Color? iconColor,
    required Color? progressIndicatorValueColor,
    required this.text,
    required this.textStyle,
    required this.iconBackground,
  }) : super(
    onPressed: onPressed,
          onLongPress: onLongPress,
          style: style,
          darkMode: darkMode,
          isLoading: isLoading,
          rtl: rtl,
          iconUrl: iconUrl,
          iconColor: iconColor,
          buttonColor: buttonColor,
          progressIndicatorValueColor: progressIndicatorValueColor,
        );

  final String text;
  final TextStyle textStyle;
  final Color iconBackground;

  @override
  Widget build(BuildContext context) {
    return SharedButton(
      key: key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      style: AuthButtonStyle(
        width: style!.width,
        height: style!.height,
        borderRadius: style!.borderRadius,
        padding: style!.padding ?? const EdgeInsets.only(right: 16.0),
        buttonColor: getButtonColor(),
        splashColor: style!.splashColor,
        elevation: style!.elevation,
        borderColor: style!.borderColor,
        borderWidth: style!.borderWidth,
        shadowColor: style!.shadowColor,
      ),
      child: ButtonContents(
        key: key,
        iconUrl: getIconUrl(),
        text: text,
        darkMode: darkMode,
        rtl: rtl,
        isLoading: isLoading,
        style: AuthButtonStyle(
          textStyle: getTextStyle(),
          iconSize: style!.iconSize,
          separator: style!.separator,
          borderRadius: style!.borderRadius,
          iconBackground: getIconBackground(),
          buttonType: style!.buttonType,
          progressIndicatorColor: style!.progressIndicatorColor,
          progressIndicatorValueColor: style!.progressIndicatorValueColor ??
              getProgressIndicatorValueColor(),
          progressIndicatorStrokeWidth: style!.progressIndicatorStrokeWidth,
          progressIndicatorValue: style!.progressIndicatorValue,
          iconColor: iconColor,
        ),
      ),
    );
  }

  @override
  Color getButtonColor() => buttonColor;

  @override
  String getIconUrl() => iconUrl;

  @override
  Color? getProgressIndicatorValueColor() => progressIndicatorValueColor;

  TextStyle getTextStyle() => textStyle;

  Color getIconBackground() => iconBackground;
}
