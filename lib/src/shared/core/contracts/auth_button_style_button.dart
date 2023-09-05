// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/auth_button_style.dart';
import 'package:auth_buttons/src/shared/core/contracts/resolving_material_style.dart';
import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show SchedulerBinding;

/// The core interface of all auth buttons.
///
/// See also:
///
///  * AuthButton, the common implementation of all auth buttons.
///  * [ResolvingMaterialStyle], the mixin which provides the resolve methods.
///
abstract class AuthButtonStyleButton extends StatelessWidget
    with ResolvingMaterialStyle {
  const AuthButtonStyleButton({
    required this.onPressed,
    required this.onLongPress,
    required this.onHover,
    required this.onFocusChange,
    required this.focusNode,
    required this.autofocus,
    required this.style,
    required this.text,
    required this.themeMode,
    required this.isLoading,
    required this.textDirection,
    required this.materialStyle,
    super.key,
  });

  /// {@template onPressed}
  ///
  /// Called when the button is tapped.
  ///
  /// If this callback and [onLongPress] are null, then the button will be disabled.
  ///
  /// See also:
  ///
  ///  * [enabled], which is true if the button is enabled.
  ///
  /// {@endtemplate}
  final VoidCallback? onPressed;

  /// {@template onLongPress}
  ///
  /// Called when the button is long-pressed.
  ///
  /// If this callback and [onPressed] are null, then the button will be disabled.
  ///
  /// See also:
  ///
  ///  * [enabled], which is true if the button is enabled.
  ///
  /// {@endtemplate}
  final VoidCallback? onLongPress;

  /// {@template onHover}
  ///
  /// Called when a pointer enters or exits the button response area.
  ///
  /// The value passed to the callback is true if a pointer has entered this
  /// part of the material and false if a pointer has exited this part of the
  /// material.
  ///
  /// {@endtemplate}
  final ValueChanged<bool>? onHover;

  /// {@template onFocusChange}
  ///
  /// Called when the focus changes.
  ///
  /// Called with true if this widget's node gains focus, and false if it loses
  /// focus.
  ///
  /// {@endtemplate}
  final ValueChanged<bool>? onFocusChange;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// {@template autofocus}
  ///
  /// True if this widget will be selected as the initial focus when no other node in its scope is currently focused.
  ///
  /// Ideally, there is only one widget with autofocus set in each FocusScope.
  /// If there is more than one widget with autofocus set, then the first one added to the tree will get focus.
  ///
  /// If the value is null than [autofocus] is false.
  ///
  /// {@endtemplate}
  final bool? autofocus;

  /// {@template style}
  ///
  /// Customizes this button's appearance.
  ///
  /// This contains everything related to the button appearance,
  /// buttonColor, iconSize, width, and others.
  ///
  /// See also:
  ///
  ///  * [materialStyle], the visual properties of material buttons.
  ///
  /// {@endtemplate}
  final AuthButtonStyle style;

  /// {@template text}
  ///
  /// The text within the button.
  ///
  /// {@endtemplate}
  final String? text;

  /// {@template isLoading}
  ///
  /// Show [ProgressIndicator] if this value is true.
  ///
  /// See also:
  ///
  ///  * [AuthButtonProgressIndicatorType], which define the progress indicator type,
  ///  available types are: [CircularProgressIndicator] and [LinearProgressIndicator].
  ///
  /// {@endtemplate}
  final bool isLoading;

  /// {@template textDirection}
  ///
  /// A direction in which text flows.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/google.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/rtl.png)
  ///
  /// {@endtemplate}
  final TextDirection textDirection;

  /// Describes which theme will be used for the [AuthButton]s.
  ///
  /// By default its sets to [ThemeMode.system] in order to get the system [Brightness].
  final ThemeMode themeMode;

  ///{@template materialStyle}
  ///
  /// Customizes this button's appearance within the [ButtonStyle].
  ///
  /// See also:
  ///
  ///  * [style], the [AuthButton]s dedicated visual properties.
  ///
  /// {@endtemplate}
  final ButtonStyle? materialStyle;

  /// {@template getIcon}
  ///
  /// The method which returns the [AuthIcon].
  ///
  /// {@endtemplate}
  AuthIcon getIcon(BuildContext context);

  /// {@template getButtonStyle}
  ///
  /// Returns an [AuthButtonStyle], this method makes more easy buttons styling.
  ///
  /// {@endtemplate}
  AuthButtonStyle? getButtonStyle();

  /// {@template getButtonStyle}
  ///
  /// Returns a material [ButtonStyle], this method makes more easy buttons styling.
  ///
  /// {@endtemplate}
  ButtonStyle? getMaterialStyle(BuildContext context);

  /// {@template getProgressIndicatorColor}
  ///
  /// Returns the color of the [ProgressIndicator]s.
  ///
  /// {@endtemplate}
  Color? getProgressIndicatorColor();

  /// {@template enabled}
  ///
  /// Define if the button is enabled or disabled.
  ///
  /// Buttons are disabled by default. To enable a button, set its [onPressed]
  /// or [onLongPress] properties to a non-null value.
  ///
  /// {@endtemplate}
  bool get enabled => onPressed != null || onLongPress != null;

  /// {@template isDark}
  ///
  /// Define if the button is in dark or light appearance, follows the system [Brightness] by default.
  ///
  /// {@endtemplate}
  bool get isDark {
    if (themeMode == ThemeMode.dark) return true;
    if (themeMode == ThemeMode.light) return false;
    return SchedulerBinding.instance.platformDispatcher.platformBrightness ==
        Brightness.dark;
  }

  @override
  Widget build(BuildContext context);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    // @formatter:off
    super.debugFillProperties(properties);
    properties
        .add(ObjectFlagProperty<VoidCallback?>.has('onPressed', onPressed));
    properties
        .add(ObjectFlagProperty<VoidCallback?>.has('onLongPress', onLongPress));
    properties
        .add(ObjectFlagProperty<ValueChanged<bool>?>.has('onHover', onHover));
    properties.add(ObjectFlagProperty<ValueChanged<bool>?>.has(
        'onFocusChange', onFocusChange));
    properties.add(DiagnosticsProperty<FocusNode?>('focusNode', focusNode));
    properties.add(DiagnosticsProperty<bool?>('autofocus', autofocus));
    properties.add(DiagnosticsProperty<AuthButtonStyle>('style', style));
    properties.add(StringProperty('text', text));
    properties.add(DiagnosticsProperty<bool>('isLoading', isLoading));
    properties.add(EnumProperty<TextDirection>('textDirection', textDirection));
    properties.add(EnumProperty<ThemeMode>('themeMode', themeMode));
    properties
        .add(DiagnosticsProperty<ButtonStyle?>('materialStyle', materialStyle));
    properties.add(DiagnosticsProperty<bool>('enabled', enabled));
    properties.add(DiagnosticsProperty<bool>('isDark', isDark));
    // @formatter:on
  }
}
