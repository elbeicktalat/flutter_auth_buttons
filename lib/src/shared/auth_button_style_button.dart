import 'package:auth_buttons/src/shared/auth_button_style.dart';
import 'package:auth_buttons/src/shared/auth_style.dart';
import 'package:auth_buttons/src/shared/button_contents.dart';
import 'package:auth_buttons/src/shared/shared_button.dart';
import 'package:flutter/material.dart';

abstract class AuthButtonStyleButton extends StatefulWidget {
  const AuthButtonStyleButton({
    Key? key,
    required this.onPressed,
    required this.onLongPress,
    required this.style,
    required this.text,
    required this.darkMode,
    required this.isLoading,
    required this.rtl,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final AuthButtonStyle? style;
  final String? text;
  final bool darkMode;
  final bool isLoading;
  final bool rtl;

  @override
  _AuthButtonStyleButtonState createState() => _AuthButtonStyleButtonState();

  Color getButtonColor() => Colors.white;

  Color getIconBackground() {
    if (style!.authButtonStyleType == AuthButtonStyleType.secondary)
      return style!.iconBackground ??
          (darkMode ? Colors.black26 : Colors.white);
    return style!.iconBackground ?? Colors.transparent;
  }

  TextStyle getTextStyle() {
    if (style!.authButtonStyleType == AuthButtonStyleType.secondary)
      return style!.textStyle ??
          const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.50,
          );
    return style!.textStyle ??
        TextStyle(
          color: darkMode ? Colors.white : Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.50,
        );
  }

  String getIconUrl() => '';

  Color? getProgressIndicatorValueColor() => Colors.blue;
}

class _AuthButtonStyleButtonState extends State<AuthButtonStyleButton> {
  @override
  Widget build(BuildContext context) {
    switch (widget.style!.authButtonStyleType) {
      case AuthButtonStyleType.icon:
        return SharedButton(
          key: widget.key,
          width: widget.style!.width ?? 50.0,
          height: widget.style!.height ?? 50.0,
          onPressed: widget.onPressed!,
          borderRadius: widget.style!.borderRadius,
          padding: widget.style!.padding ?? const EdgeInsets.all(0),
          buttonColor: widget.getButtonColor(),
          splashColor: widget.style!.splashColor,
          elevation: widget.style!.elevation,
          borderColor: widget.style!.borderColor,
          borderWidth: widget.style!.borderWidth ?? 2.0,
          onLongPress: widget.onLongPress,
          shadowColor: widget.style!.shadowColor,
          child: ButtonContents(
            key: widget.key,
            iconUrl: widget.getIconUrl(),
            iconSize: widget.style!.iconSize,
            separator: 0.0,
            isLoading: widget.isLoading,
            progressIndicatorColor: widget.style!.progressIndicatorColor,
            progressIndicatorValueColor:
                widget.style!.progressIndicatorValueColor ??
                    widget.getProgressIndicatorValueColor(),
            progressIndicatorStrokeWidth:
                widget.style!.progressIndicatorStrokeWidth,
            progressIndicatorValue: widget.style!.progressIndicatorValue,
          ),
        );
      case AuthButtonStyleType.secondary:
        return SharedButton(
          key: widget.key,
          width: widget.style!.width,
          height: widget.style!.height,
          onPressed: widget.onPressed!,
          borderRadius: widget.style!.borderRadius,
          padding: widget.style!.padding ?? const EdgeInsets.only(right: 16.0),
          buttonColor: widget.getButtonColor(),
          splashColor: widget.style!.splashColor,
          elevation: widget.style!.elevation,
          borderColor: widget.style!.borderColor,
          borderWidth: widget.style!.borderWidth,
          onLongPress: widget.onLongPress,
          shadowColor: widget.style!.shadowColor,
          child: ButtonContents(
            key: widget.key,
            iconUrl: widget.getIconUrl(),
            text: widget.text!,
            textStyle: widget.getTextStyle(),
            iconSize: widget.style!.iconSize,
            separator: widget.style!.separator,
            darkMode: widget.darkMode,
            borderRadius: widget.style!.borderRadius,
            iconBackground: widget.getIconBackground(),
            rtl: widget.rtl,
            style: widget.style!.authButtonStyleType,
            isLoading: widget.isLoading,
            progressIndicatorColor: widget.style!.progressIndicatorColor,
            progressIndicatorValueColor:
                widget.style!.progressIndicatorValueColor ??
                    widget.getProgressIndicatorValueColor(),
            progressIndicatorStrokeWidth:
                widget.style!.progressIndicatorStrokeWidth,
            progressIndicatorValue: widget.style!.progressIndicatorValue,
          ),
        );
      default:
        return SharedButton(
          key: widget.key,
          width: widget.style!.width,
          height: widget.style!.height,
          onPressed: widget.onPressed!,
          borderRadius: widget.style!.borderRadius,
          padding: widget.style!.padding ??
              const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 12.0,
                bottom: 12.0,
              ),
          buttonColor: widget.getButtonColor(),
          splashColor: widget.style!.splashColor,
          elevation: widget.style!.elevation,
          borderColor: widget.style!.borderColor,
          borderWidth: widget.style!.borderWidth,
          onLongPress: widget.onLongPress,
          shadowColor: widget.style!.shadowColor,
          child: ButtonContents(
            key: widget.key,
            iconUrl: widget.getIconUrl(),
            text: widget.text!,
            textStyle: widget.getTextStyle(),
            iconSize: widget.style!.iconSize,
            separator: widget.style!.separator,
            darkMode: widget.darkMode,
            rtl: widget.rtl,
            isLoading: widget.isLoading,
            progressIndicatorColor: widget.style!.progressIndicatorColor,
            progressIndicatorValueColor:
                widget.style!.progressIndicatorValueColor ??
                    widget.getProgressIndicatorValueColor(),
            progressIndicatorStrokeWidth:
                widget.style!.progressIndicatorStrokeWidth,
            progressIndicatorValue: widget.style!.progressIndicatorValue,
          ),
        );
    }
  }
}
