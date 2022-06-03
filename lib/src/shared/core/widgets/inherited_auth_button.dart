import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart'
    show BuildContext, ButtonStyle, InheritedWidget, protected;

@protected
class InheritedAuthButton extends InheritedWidget {
  const InheritedAuthButton({
    super.key,
    required super.child,
    required this.style,
    required this.rtl,
    required this.materialStyle,
  });

  final bool rtl;
  final AuthButtonStyle? style;
  final ButtonStyle? materialStyle;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;

  static InheritedAuthButton? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedAuthButton>();
  }
}
