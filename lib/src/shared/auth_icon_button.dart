import 'package:auth_buttons/src/shared/auth_button_style.dart';
import 'package:auth_buttons/src/shared/base_auth_button.dart';
import 'package:auth_buttons/src/shared/button_contents.dart';
import 'package:auth_buttons/src/shared/shared_button.dart';
import 'package:flutter/material.dart';

class AuthIconButton extends BaseAuthButton {
  AuthIconButton({
    required VoidCallback? onPressed,
    required VoidCallback? onLongPress,
    required AuthButtonStyle? style,
    required bool darkMode,
    required bool isLoading,
    required bool rtl,
    required Color buttonColor,
    required String iconUrl,
    required Color? progressIndicatorValueColor,
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

  @override
  Widget build(BuildContext context) {
    return SharedButton(
      key: key,
      onPressed: onPressed!,
      onLongPress: onLongPress,
      style: AuthButtonStyle(
        width: style!.width ?? 50.0,
        height: style!.height ?? 50.0,
        borderRadius: style!.borderRadius,
        padding: style!.padding ?? const EdgeInsets.all(0),
        buttonColor: getButtonColor(),
        splashColor: style!.splashColor,
        elevation: style!.elevation,
        borderColor: style!.borderColor,
        borderWidth: style!.borderWidth ?? 2.0,
        shadowColor: style!.shadowColor,
      ),
      child: ButtonContents(
        key: key,
        iconUrl: getIconUrl(),
        isLoading: isLoading,
        style: AuthButtonStyle(
          iconSize: style!.iconSize,
          separator: 0.0,
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
}
