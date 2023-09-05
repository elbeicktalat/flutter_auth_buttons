import 'package:auth_buttons/auth_buttons.dart';
import 'package:auth_buttons/src/shared/base/contracts/auth_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AuthButtonGroup extends StatelessWidget {
  const AuthButtonGroup({
    required this.buttons,
    this.style,
    this.textDirection = TextDirection.ltr,
    this.materialStyle,
    this.orientation = Axis.horizontal,
    this.spacing,
    this.runSpacing,
    this.alignment = WrapAlignment.start,
    this.runAlignment = WrapAlignment.start,
    this.crossAxisAlignment = WrapCrossAlignment.start,
    this.direction = VerticalDirection.down,
    super.key,
  }) : assert(buttons.length >= 2, 'buttons must be more than one');

  final TextDirection textDirection;
  final List<AuthButton> buttons;
  final AuthButtonStyle? style;
  final ButtonStyle? materialStyle;
  final double? spacing;
  final double? runSpacing;
  final Axis orientation;
  final WrapAlignment alignment;
  final WrapAlignment runAlignment;
  final WrapCrossAlignment crossAxisAlignment;
  final VerticalDirection direction;

  @override
  Widget build(BuildContext context) {
    return InheritedAuthButton(
      style: style,
      textDirection: textDirection,
      materialStyle: materialStyle,
      child: Wrap(
        spacing: spacing ?? _getSpacing(),
        runSpacing: runSpacing ?? _getRunSpacing(),
        alignment: alignment,
        runAlignment: runAlignment,
        crossAxisAlignment: crossAxisAlignment,
        direction: orientation,
        verticalDirection: direction,
        children: getChildren() ?? buttons,
      ),
    );
  }

  @visibleForTesting
  List<Widget>? getChildren() {
    final List<Widget> fittedButtons = <Widget>[];
    for (final AuthButton button in buttons) {
      fittedButtons.add(
        SizedBox(
          width: style?.width,
          height: style?.height,
          child: FittedBox(
            fit: BoxFit.fill,
            child: button,
          ),
        ),
      );
    }

    if (style?.buttonType != AuthButtonType.icon) {
      return fittedButtons;
    }
    return null;
  }

  double _getSpacing() {
    if (orientation == Axis.vertical) {
      if (style!.buttonType != AuthButtonType.icon) {
        return 0.0;
      }
      return 8.0;
    }
    return 8.0;
  }

  double _getRunSpacing() {
    if (orientation != Axis.horizontal) {
      if (style!.buttonType != AuthButtonType.icon) {
        return 0.0;
      }
      return 8.0;
    }
    if (style!.buttonType != AuthButtonType.icon) {
      return 0.0;
    }
    return 8.0;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    // @formatter:off
    super.debugFillProperties(properties);
    properties.add(EnumProperty<TextDirection>('textDirection', textDirection));
    properties.add(DiagnosticsProperty<AuthButtonStyle?>('style', style));
    properties
        .add(DiagnosticsProperty<ButtonStyle?>('materialStyle', materialStyle));
    properties.add(DoubleProperty('spacing', spacing));
    properties.add(DoubleProperty('runSpacing', runSpacing));
    properties.add(EnumProperty<Axis>('orientation', orientation));
    properties.add(EnumProperty<WrapAlignment>('alignment', alignment));
    properties.add(EnumProperty<WrapAlignment>('runAlignment', runAlignment));
    properties.add(EnumProperty<WrapCrossAlignment>(
        'crossAxisAlignment', crossAxisAlignment));
    properties.add(EnumProperty<VerticalDirection>('direction', direction));
    // @formatter:on
  }
}
