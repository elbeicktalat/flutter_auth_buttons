import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/widgets.dart';

@protected
class InheritedAuthButton extends InheritedWidget {
  const InheritedAuthButton({
    super.key,
    required super.child,
    required this.onIcon,
    required this.onSecondary,
    required this.style,
    required this.rtl,
    required this.isLoading,
  });

  final AuthButtonStyle? onIcon;
  final AuthButtonStyle? onSecondary;
  final AuthButtonStyle? style;
  final bool rtl;
  final bool isLoading;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;

  static InheritedAuthButton? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedAuthButton>();
  }
}
