// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/auth_buttons.dart';
import 'package:auth_buttons/src/helpers/auth_text_color.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle _disabledTextStyle() {
  return _enabledTextStyle(
    textColor: TextColor(
      AuthColors.disabledContent,
    ),
  );
}

TextStyle _enabledTextStyle({
  AuthButtonType? buttonType,
  AuthIconType? iconType,
  TextColor? textColor,
  String? fontFamily,
  double? fontSize,
  FontWeight? fontWeight,
}) {
  TextStyle textStyle = GoogleFonts.getFont(
    fontFamily ?? 'Roboto',
    color: textColor!.color,
    fontSize: fontSize ?? 18.0,
    fontWeight: fontWeight,
  );

  if (buttonType == AuthButtonType.secondary)
    return textStyle.copyWith(
      color: textColor.onSecondaryButton,
    );

  if (iconType == AuthIconType.secondary)
    return textStyle.copyWith(
      color: textColor.onSecondaryIcon,
    );

  return textStyle;
}

TextStyle resolvedTextStyle({
  required AuthButtonType? buttonType,
  AuthIconType? iconType,
  required bool enabled,
  TextColor? textColor,
  String? fontFamily,
  double? fontSize,
  FontWeight? fontWeight,
}) {
  if (!enabled) return _disabledTextStyle();
  return _enabledTextStyle(
    buttonType: buttonType,
    iconType: iconType,
    textColor: textColor,
    fontFamily: fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
  );
}
