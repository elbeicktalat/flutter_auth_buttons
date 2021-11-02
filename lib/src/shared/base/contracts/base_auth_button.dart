import 'package:auth_buttons/src/shared/base/widgets/auth_button_secondary.dart';
import 'package:auth_buttons/src/shared/base/widgets/auth_default_button.dart';
import 'package:auth_buttons/src/shared/base/widgets/auth_icon_button.dart';
import 'package:auth_buttons/src/shared/core/contracts/auth_button_style_button.dart';
import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:flutter/material.dart';

abstract class BaseAuthButton extends AuthButtonStyleButton {
  const BaseAuthButton({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    AuthButtonStyle? style,
    String? text,
    bool darkMode = false,
    bool isLoading = false,
    bool rtl = false,
    TextStyle? textStyle,
  }) : super(
          key: key,
          onPressed: onPressed,
          onLongPress: onLongPress,
          style: style ?? const AuthButtonStyle(),
          text: text,
          textStyle: textStyle,
          darkMode: darkMode,
          isLoading: isLoading,
          rtl: rtl,
        );

  @override
  Color getButtonColor() => darkMode ? AuthColors.darkMode : Colors.white;

  @override
  Color getIconBackground() => darkMode ? AuthColors.darkMode : Colors.white;

  @override
  Color? getProgressIndicatorValueColor() => Colors.blue;

  @override
  TextStyle getTextStyle() {
    if (style!.buttonType == AuthButtonType.secondary)
      return textStyle ??
          const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.50,
          );
    return textStyle ??
        TextStyle(
          color: darkMode ? Colors.white : Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.50,
        );
  }

  @override
  Widget build(BuildContext context) {
    switch (style!.buttonType) {
      case AuthButtonType.icon:
        return AuthIconButton(
          onPressed: onPressed,
          onLongPress: onLongPress,
          style: getButtonStyle(),
          darkMode: darkMode,
          isLoading: isLoading,
          rtl: rtl,
          iconUrl: getIconUrl(),
          buttonColor: getButtonColor(),
          progressIndicatorValueColor: getProgressIndicatorValueColor(),
        );
      case AuthButtonType.secondary:
        return AuthButtonSecondary(
          onPressed: onPressed,
          onLongPress: onLongPress,
          style: getButtonStyle(),
          darkMode: darkMode,
          isLoading: isLoading,
          rtl: rtl,
          text: text!,
          textStyle: getTextStyle(),
          buttonColor: getButtonColor(),
          iconUrl: getIconUrl(),
          progressIndicatorValueColor: getProgressIndicatorValueColor(),
          iconBackground: getIconBackground(),
        );
      default:
        return AuthDefaultButton(
          onPressed: onPressed,
          onLongPress: onLongPress,
          style: getButtonStyle(),
          darkMode: darkMode,
          isLoading: isLoading,
          rtl: rtl,
          text: text!,
          buttonColor: getButtonColor(),
          iconUrl: getIconUrl(),
          progressIndicatorValueColor: getProgressIndicatorValueColor(),
          textStyle: getTextStyle(),
        );
    }
  }
}
