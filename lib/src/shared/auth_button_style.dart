import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';

@immutable
class AuthButtonStyle {
  const AuthButtonStyle({
    this.buttonColor,
    this.splashColor,
    this.elevation = 2.0,
    this.borderRadius = 8.0,
    this.padding ,
    this.textStyle,
    this.borderColor,
    this.borderWidth,
    this.buttonType,
    this.width,
    this.height,
    this.iconSize = 35.0,
    this.separator = 10.0,
    this.iconBackground,
    this.iconStyle,
    this.shadowColor,
    this.progressIndicatorColor,
    this.progressIndicatorValueColor,
    this.progressIndicatorStrokeWidth,
    this.progressIndicatorValue,
  });

  final Color? buttonColor;
  final Color? splashColor;
  final double? elevation;
  final double? borderRadius;
  final EdgeInsets? padding;
  final TextStyle? textStyle;
  final Color? borderColor;
  final double? borderWidth;
  final AuthButtonType? buttonType;
  final double? width;
  final double? height;
  final double? iconSize;
  final double? separator;
  final Color? iconBackground;
  final AuthIconStyle? iconStyle;
  final Color? shadowColor;
  final Color? progressIndicatorColor;
  final Color? progressIndicatorValueColor;
  final double? progressIndicatorStrokeWidth;
  final double? progressIndicatorValue;
}
