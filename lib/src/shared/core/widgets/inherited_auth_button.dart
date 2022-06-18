import 'dart:ui' show TextDirection;

import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart'
    show BuildContext, ButtonStyle, InheritedWidget;

/// The auth widget that allows propagating information for the [child] widget.
///
/// This has been added within the version **3.0.0**.
///
/// See also:
///
///  * [InheritedWidget], The base class for widgets that efficiently propagate information down the tree.
///
class InheritedAuthButton extends InheritedWidget {
  const InheritedAuthButton({
    super.key,
    required super.child,
    required this.style,
    required this.textDirection,
    required this.materialStyle,
  });

  /// {@macro textDirection}
  final TextDirection textDirection;

  /// {@macro style}
  final AuthButtonStyle? style;

  /// {@macro materialStyle}
  final ButtonStyle? materialStyle;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;

  /// The data from the [InheritedAuthButton] instance that encloses the given
  /// context.
  ///
  /// This [of] method is typical of others [InheritedWidget]s.
  static InheritedAuthButton? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedAuthButton>();
  }
}
