import 'dart:ui';

import 'package:auth_buttons/src/shared/auth_button_style.dart';
import 'package:auth_buttons/src/shared/base_auth_button.dart';
import 'package:auth_buttons/src/shared/button_contents.dart';
import 'package:auth_buttons/src/shared/shared_button.dart';
import 'package:flutter/material.dart';

class AuthButtonSecondary extends BaseAuthButton {
  AuthButtonSecondary({
    required VoidCallback? onPressed,
    required VoidCallback? onLongPress,
    required AuthButtonStyle? style,
    required bool darkMode,
    required bool isLoading,
    required bool rtl,
    required Color buttonColor,
    required String iconUrl,
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
      onPressed: onPressed!,
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
        textStyle: getTextStyle(),
        style: AuthButtonStyle(
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
