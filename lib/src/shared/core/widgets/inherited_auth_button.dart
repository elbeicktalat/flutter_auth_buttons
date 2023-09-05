import 'dart:ui' show TextDirection;

import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart'
    show BuildContext, ButtonStyle, InheritedWidget;

/// The auth widget that allows propagating information for the [child] widget.
///
/// This has been added within the version **3.0.0**.
///
/// Suggestion: use any widget which can hold multiple [child]s like:
/// [Column], [Row] or [Wrap], other ways this [InheritedWidget] doesn't have any sense.
///
/// See also:
///
///  * [InheritedWidget], The base class for widgets that efficiently propagate information down the tree.
///  * [AuthButtonGroup], the regrouped [AuthButton]s which make use of [InheritedAuthButton].
///
class InheritedAuthButton extends InheritedWidget {
  const InheritedAuthButton({
    required super.child,
    this.style,
    this.materialStyle,
    this.textDirection = TextDirection.ltr,
    super.key,
  });

  /// {@macro style}
  final AuthButtonStyle? style;

  /// {@macro materialStyle}
  final ButtonStyle? materialStyle;

  /// {@macro textDirection}
  final TextDirection textDirection;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;

  /// The data from the [InheritedAuthButton] instance that encloses the given
  /// context.
  ///
  /// This [of] method is typical in others [InheritedWidget]s.
  static InheritedAuthButton? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedAuthButton>();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    // @formatter:off
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<AuthButtonStyle?>('style', style));
    properties
        .add(DiagnosticsProperty<ButtonStyle?>('materialStyle', materialStyle));
    properties.add(EnumProperty<TextDirection>('textDirection', textDirection));
    // @formatter:on
  }
}
