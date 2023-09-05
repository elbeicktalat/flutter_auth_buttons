// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/utils/auth_type.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// The visual properties which can have a [AuthButton].
@immutable
class AuthButtonStyle with Diagnosticable {
  const AuthButtonStyle({
    this.buttonColor,
    this.splashColor,
    this.elevation,
    this.borderRadius,
    this.textStyle,
    this.padding,
    this.margin,
    this.borderColor,
    this.borderWidth,
    this.buttonType,
    this.width,
    this.height,
    this.iconSize = 30.0,
    this.separator,
    this.iconBackground,
    this.iconType,
    this.shadowColor,
    this.progressIndicatorColor,
    this.progressIndicatorValueColor,
    this.progressIndicatorStrokeWidth,
    this.progressIndicatorValue,
    this.iconColor,
    this.progressIndicatorType,
    this.visualDensity,
    this.tapTargetSize,
  });

  /// {@template buttonColor}
  ///
  /// Define the background color of an [AuthButton].
  ///
  /// This property is the equivalent of [ButtonStyle.backgroundColor].
  ///
  /// If buttons are [enabled] than the value is [AuthColors.darkMode] on [Brightness.dark].
  ///
  /// Non [enabled] buttons, defaults [AuthColors.disabled] on [Brightness.light] and [AuthColors.disabledDark] on [Brightness.dark].
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/buttoncolor/white.jpg)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/buttoncolor/dark.jpg)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/buttoncolor/amber.jpg)
  ///
  /// {@endtemplate}
  final Color? buttonColor;

  MaterialStateProperty<Color?>? getBackgroundColor(BuildContext context) {
    return MaterialStateProperty.resolveWith(
      (Set<MaterialState> states) =>
          buttonColor ??
          _getMaterialStyle(context)?.backgroundColor?.resolve(states),
    );
  }

  MaterialStateProperty<Color?>? getForegroundColor(BuildContext context) {
    return MaterialStateProperty.resolveWith(
      (Set<MaterialState> states) =>
          textStyle?.color ??
          _getMaterialStyle(context)?.foregroundColor?.resolve(states),
    );
  }

  /// {@template splashColor}
  ///
  /// The highlight color that's typically used to indicate that
  /// the button is focused, hovered, or pressed.
  ///
  /// This property is the equivalent of [ButtonStyle.overlayColor].
  ///
  /// {@endtemplate}
  final Color? splashColor;

  MaterialStateProperty<Color?>? getOverlayColor(BuildContext context) {
    return MaterialStateProperty.resolveWith(
      (Set<MaterialState> states) =>
          splashColor ??
          _getMaterialStyle(context)?.overlayColor?.resolve(states),
    );
  }

  /// {@template elevation}
  ///
  /// The elevation of the button's [Material].
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/buttons/google.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/elevation.png)
  ///
  /// {@endtemplate}
  final double? elevation;

  MaterialStateProperty<double?>? getElevation(BuildContext context) {
    return MaterialStateProperty.resolveWith(
      (Set<MaterialState> states) =>
          elevation ?? _getMaterialStyle(context)?.elevation?.resolve(states),
    );
  }

  /// {@template borderRadius}
  ///
  /// Define the border radius.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/border-radius.jpg)
  ///
  /// {@endtemplate}
  final double? borderRadius;

  MaterialStateProperty<OutlinedBorder?>? getShape(BuildContext context) {
    return MaterialStateProperty.resolveWith(
      (Set<MaterialState> states) =>
          _outlinedBorder() ??
          _getMaterialStyle(context)?.shape?.resolve(states),
    );
  }

  OutlinedBorder? _outlinedBorder() {
    if (borderRadius == null) return null;
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? 0.0),
    );
  }

  /// {@template padding}
  ///
  /// The padding between the button's boundary and its child.
  ///
  /// Defaults to
  ///
  /// ```dart
  /// EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0)
  /// ```
  ///
  /// If [AuthButton.style] is equal to [AuthButtonType.icon],
  /// the value is equal to [EdgeInsets.zero].
  ///
  /// If [AuthButton.style] is equal to [AuthButtonType.secondary],
  /// the value is equal to
  ///
  /// ```dart
  /// EdgeInsets.only(right: 16.0)
  /// ```
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/padding.jpg)
  ///
  /// {@endtemplate}
  final EdgeInsets? padding;

  MaterialStateProperty<EdgeInsetsGeometry?>? getPadding(BuildContext context) {
    return MaterialStateProperty.resolveWith(
      (Set<MaterialState> states) =>
          padding ?? _getMaterialStyle(context)?.padding?.resolve(states),
    );
  }

  /// {@template margin}
  ///
  /// The external space surround the buttons, defaults to [EdgeInsets.zero].
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/margin.jpg)
  ///
  /// {@endtemplate}
  final EdgeInsets? margin;

  /// {@template textStyle}
  ///
  /// If non-null, the style to use for this text.
  ///
  /// If the style's "inherit" property is true, the style will be merged with
  /// the closest enclosing [DefaultTextStyle]. Otherwise, the style will
  /// replace the closest enclosing [DefaultTextStyle].
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/text-style.jpg)
  ///
  /// {@endtemplate}
  final TextStyle? textStyle;

  MaterialStateProperty<TextStyle?>? getTextStyle(BuildContext context) {
    return MaterialStateProperty.resolveWith(
      (Set<MaterialState> states) =>
          textStyle ?? _getMaterialStyle(context)?.textStyle?.resolve(states),
    );
  }

  /// {@template borderColor}
  ///
  /// Define the color border around the button.
  ///
  ///
  /// ```dart
  /// borderColor: Colors.amber
  /// ```
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/border-color-amber.png)
  ///
  /// ```dart
  /// borderColor: Colors.green
  /// ```
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/border-color-green.png)
  ///
  /// {@endtemplate}
  final Color? borderColor;

  /// {@template borderWidth}
  ///
  /// Define the width of the border which surround the button.
  ///
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/border-width-soft.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/border-width-medium.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/border-width-large.png)
  ///
  /// {@endtemplate}
  final double? borderWidth;

  MaterialStateProperty<BorderSide?>? getSide(BuildContext context) {
    return MaterialStateProperty.resolveWith(
      (Set<MaterialState> states) =>
          _borderSide() ?? _getMaterialStyle(context)?.side?.resolve(states),
    );
  }

  BorderSide? _borderSide() {
    if (borderWidth == null || borderColor == null) return null;
    return BorderSide(
      width: borderWidth ?? 2.0,
      color: borderColor ?? Colors.transparent,
    );
  }

  /// {@template buttonType}
  ///
  /// Define the button Type.
  ///
  /// This is the default Type, [buttonType] equal to null.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/buttons/google.png)
  ///
  /// If [buttonType] equal to [AuthButtonType.icon]
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/buttons/google-icon.png)
  ///
  /// If [buttonType] equal to [AuthButtonType.secondary]
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/buttons/google-secondary.png)
  ///
  /// {@endtemplate}
  final AuthButtonType? buttonType;

  /// {@template width}
  ///
  /// Define the button width, defaults is the minimum.
  ///
  /// {@endtemplate}
  final double? width;

  /// {@template height}
  ///
  /// Define the height button, the default value is the minimum.
  ///
  /// {@endtemplate}
  final double? height;

  MaterialStateProperty<Size?>? getMinimumSize(BuildContext context) {
    return MaterialStateProperty.resolveWith(
      (Set<MaterialState> states) =>
          _minimumSize() ??
          _getMaterialStyle(context)?.minimumSize?.resolve(states),
    );
  }

  Size? _minimumSize() {
    if (width == null && height == null) return null;
    return Size(width ?? double.minPositive, height ?? double.minPositive);
  }

  /// {@template iconSize}
  ///
  /// Define the size of an [AuthIcon], defaults 30.0.
  ///
  /// Also you can give it any size.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/icon-size-small.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/icon-size-big.png)
  ///
  /// {@endtemplate}
  final double? iconSize;

  /// {@template separator}
  ///
  /// Define the value of the space between the [AuthIcon] and the [Text].
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/buttons/google.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/separator.png)
  ///
  /// {@endtemplate}
  final double? separator;

  /// {@template iconBackground}
  ///
  /// Define the background of an [AuthIcon].
  ///
  /// Ideally used when the [buttonType] is equal to [AuthButtonType.secondary].
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/icon-background.jpg)
  ///
  /// {@endtemplate}
  final Color? iconBackground;

  /// {@template iconType}
  ///
  /// Define the icon type.
  ///
  /// The default icon looks, [iconType] must be null.
  ///
  /// ![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/icontype/default.jpg)
  ///
  /// If the [iconType] is equal to [AuthIconType.outlined]
  ///
  /// ![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/icontype/outlined.jpg)
  ///
  /// If the [iconType] is equal to [AuthIconType.secondary]
  ///
  /// ![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/icontype/secondary.jpg)
  ///
  /// {@endtemplate}
  final AuthIconType? iconType;

  /// {@template shadowColor}
  ///
  /// Define the color of the shadow placed behind the button.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/buttons/google.png)
  ///
  /// ![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/shadow-color.jpg)
  ///
  /// {@endtemplate}
  final Color? shadowColor;

  MaterialStateProperty<Color?>? getShadowColor(BuildContext context) {
    return MaterialStateProperty.resolveWith(
      (Set<MaterialState> states) =>
          shadowColor ??
          _getMaterialStyle(context)?.shadowColor?.resolve(states),
    );
  }

  /// {@template iconColor}
  ///
  /// Define the color icon, by default icons are NOT colored.
  ///
  /// If the buttons are disabled the icon color is **#e5e5e5**.
  ///
  /// {@endtemplate}
  final Color? iconColor;

  /// Determinate the progress indicator to show.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/progressindicatortype/circular.jpg)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/main/doc/api/assets/progressindicatortype/linear.jpg)
  ///
  /// See also:
  ///
  /// * [CircularProgressIndicator], which shows progress along a circular arc.
  /// * [LinearProgressIndicator], which displays progress along a line.
  ///
  final AuthIndicatorType? progressIndicatorType;

  final Color? progressIndicatorColor;
  final Color? progressIndicatorValueColor;
  final double? progressIndicatorStrokeWidth;
  final double? progressIndicatorValue;
  final VisualDensity? visualDensity;
  final MaterialTapTargetSize? tapTargetSize;

  ButtonStyle? _getMaterialStyle(BuildContext context) {
    return Theme.of(context).elevatedButtonTheme.style;
  }

  /// Returns a copy of this AuthButtonStyle with the given fields replaced with the new values.
  AuthButtonStyle copyWith({
    Color? buttonColor,
    Color? splashColor,
    double? elevation,
    double? borderRadius,
    EdgeInsets? padding,
    EdgeInsets? margin,
    TextStyle? textStyle,
    Color? borderColor,
    double? borderWidth,
    AuthButtonType? buttonType,
    double? width,
    double? height,
    double? iconSize,
    double? separator,
    Color? iconBackground,
    AuthIconType? iconType,
    Color? shadowColor,
    Color? progressIndicatorColor,
    Color? progressIndicatorValueColor,
    double? progressIndicatorStrokeWidth,
    double? progressIndicatorValue,
    Color? iconColor,
    AuthIndicatorType? progressIndicatorType,
    VisualDensity? visualDensity,
    MaterialTapTargetSize? tapTargetSize,
  }) {
    return AuthButtonStyle(
      buttonColor: buttonColor ?? this.buttonColor,
      splashColor: splashColor ?? this.splashColor,
      elevation: elevation ?? this.elevation,
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      margin: margin ?? this.margin,
      textStyle: textStyle ?? this.textStyle,
      borderColor: borderColor ?? this.borderColor,
      borderWidth: borderWidth ?? this.borderWidth,
      buttonType: buttonType ?? this.buttonType,
      width: width ?? this.width,
      height: height ?? this.height,
      iconSize: iconSize ?? this.iconSize,
      separator: separator ?? this.separator,
      iconBackground: iconBackground ?? this.iconBackground,
      iconType: iconType ?? this.iconType,
      shadowColor: shadowColor ?? this.shadowColor,
      progressIndicatorColor:
          progressIndicatorColor ?? this.progressIndicatorColor,
      progressIndicatorValueColor:
          progressIndicatorValueColor ?? this.progressIndicatorValueColor,
      progressIndicatorStrokeWidth:
          progressIndicatorStrokeWidth ?? this.progressIndicatorStrokeWidth,
      progressIndicatorValue:
          progressIndicatorValue ?? this.progressIndicatorValue,
      iconColor: iconColor ?? this.iconColor,
      progressIndicatorType:
          progressIndicatorType ?? this.progressIndicatorType,
      visualDensity: visualDensity ?? this.visualDensity,
      tapTargetSize: tapTargetSize ?? this.tapTargetSize,
    );
  }

  /// Returns a copy of this AuthButtonStyle where the non-null fields in [style]
  /// have replaced the corresponding null fields in this AuthButtonStyle.
  ///
  /// In other words, [style] is used to fill in unspecified (null) fields
  /// this AuthButtonStyle.
  ///
  /// unlike [copyWith()] where replaces the given fields with new values,
  /// this method will assign the given values only if values is null.
  AuthButtonStyle merge(AuthButtonStyle? style) {
    if (style == null) return this;
    return copyWith(
      buttonColor: buttonColor ?? style.buttonColor,
      splashColor: splashColor ?? style.splashColor,
      elevation: elevation ?? style.elevation,
      borderRadius: borderRadius ?? style.borderRadius,
      padding: padding ?? style.padding,
      margin: margin ?? style.margin,
      textStyle: textStyle ?? style.textStyle,
      borderColor: borderColor ?? style.borderColor,
      borderWidth: borderWidth ?? style.borderWidth,
      buttonType: buttonType ?? style.buttonType,
      width: width ?? style.width,
      height: height ?? style.height,
      iconSize: iconSize ?? style.iconSize,
      separator: separator ?? style.separator,
      iconBackground: iconBackground ?? style.iconBackground,
      iconType: iconType ?? style.iconType,
      shadowColor: shadowColor ?? style.shadowColor,
      progressIndicatorColor:
          progressIndicatorColor ?? style.progressIndicatorColor,
      progressIndicatorValueColor:
          progressIndicatorValueColor ?? style.progressIndicatorValueColor,
      progressIndicatorStrokeWidth:
          progressIndicatorStrokeWidth ?? style.progressIndicatorStrokeWidth,
      progressIndicatorValue:
          progressIndicatorValue ?? style.progressIndicatorValue,
      iconColor: iconColor ?? style.iconColor,
      progressIndicatorType:
          progressIndicatorType ?? style.progressIndicatorType,
      visualDensity: visualDensity ?? style.visualDensity,
      tapTargetSize: tapTargetSize ?? style.tapTargetSize,
    );
  }

  /// Returns a copy of this AuthButtonStyle with the given [style] replaced with the new values.
  ///
  /// Like [copyWith()] it replaces fields with new values,
  /// but it allows you passing AuthButtonStyle instead of passing every single field.
  AuthButtonStyle replace(AuthButtonStyle? style) {
    if (style == null) return this;
    return copyWith(
      buttonColor: style.buttonColor,
      splashColor: style.splashColor,
      elevation: style.elevation,
      borderRadius: style.borderRadius,
      padding: style.padding,
      margin: style.margin,
      textStyle: style.textStyle,
      borderColor: style.borderColor,
      borderWidth: style.borderWidth,
      buttonType: style.buttonType,
      width: style.width,
      height: style.height,
      iconSize: style.iconSize,
      separator: style.separator,
      iconBackground: style.iconBackground,
      iconType: style.iconType,
      shadowColor: style.shadowColor,
      progressIndicatorColor: style.progressIndicatorColor,
      progressIndicatorValueColor: style.progressIndicatorValueColor,
      progressIndicatorStrokeWidth: style.progressIndicatorStrokeWidth,
      progressIndicatorValue: style.progressIndicatorValue,
      iconColor: style.iconColor,
      progressIndicatorType: style.progressIndicatorType,
      visualDensity: style.visualDensity,
      tapTargetSize: style.tapTargetSize,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthButtonStyle &&
          runtimeType == other.runtimeType &&
          buttonColor == other.buttonColor &&
          splashColor == other.splashColor &&
          elevation == other.elevation &&
          borderRadius == other.borderRadius &&
          padding == other.padding &&
          margin == other.margin &&
          textStyle == other.textStyle &&
          borderColor == other.borderColor &&
          borderWidth == other.borderWidth &&
          buttonType == other.buttonType &&
          width == other.width &&
          height == other.height &&
          iconSize == other.iconSize &&
          separator == other.separator &&
          iconBackground == other.iconBackground &&
          iconType == other.iconType &&
          shadowColor == other.shadowColor &&
          iconColor == other.iconColor &&
          progressIndicatorColor == other.progressIndicatorColor &&
          progressIndicatorValueColor == other.progressIndicatorValueColor &&
          progressIndicatorStrokeWidth == other.progressIndicatorStrokeWidth &&
          progressIndicatorValue == other.progressIndicatorValue &&
          progressIndicatorType == other.progressIndicatorType &&
          visualDensity == other.visualDensity &&
          tapTargetSize == other.tapTargetSize;

  @override
  int get hashCode =>
      buttonColor.hashCode ^
      splashColor.hashCode ^
      elevation.hashCode ^
      borderRadius.hashCode ^
      padding.hashCode ^
      margin.hashCode ^
      textStyle.hashCode ^
      borderColor.hashCode ^
      borderWidth.hashCode ^
      buttonType.hashCode ^
      width.hashCode ^
      height.hashCode ^
      iconSize.hashCode ^
      separator.hashCode ^
      iconBackground.hashCode ^
      iconType.hashCode ^
      shadowColor.hashCode ^
      iconColor.hashCode ^
      progressIndicatorColor.hashCode ^
      progressIndicatorValueColor.hashCode ^
      progressIndicatorStrokeWidth.hashCode ^
      progressIndicatorValue.hashCode ^
      progressIndicatorType.hashCode ^
      visualDensity.hashCode ^
      tapTargetSize.hashCode;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    // @formatter:off
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Color?>('buttonColor', buttonColor,
        defaultValue: null));
    properties.add(DiagnosticsProperty<Color?>('splashColor', splashColor,
        defaultValue: null));
    properties.add(DiagnosticsProperty<double?>('elevation', elevation,
        defaultValue: null));
    properties.add(DiagnosticsProperty<double?>('borderRadius', borderRadius,
        defaultValue: null));
    properties.add(DiagnosticsProperty<EdgeInsets?>('padding', padding,
        defaultValue: null));
    properties.add(
        DiagnosticsProperty<EdgeInsets?>('margin', margin, defaultValue: null));
    properties.add(DiagnosticsProperty<TextStyle?>('textStyle', textStyle,
        defaultValue: null));
    properties.add(DiagnosticsProperty<Color?>('borderColor', borderColor,
        defaultValue: null));
    properties.add(DiagnosticsProperty<double?>('borderWidth', borderWidth,
        defaultValue: null));
    properties.add(DiagnosticsProperty<AuthButtonType?>(
        'buttonType', buttonType,
        defaultValue: null));
    properties
        .add(DiagnosticsProperty<double?>('width', width, defaultValue: null));
    properties.add(
        DiagnosticsProperty<double?>('height', height, defaultValue: null));
    properties.add(
        DiagnosticsProperty<double?>('iconSize', iconSize, defaultValue: 30.0));
    properties.add(DiagnosticsProperty<double?>('separator', separator,
        defaultValue: null));
    properties.add(DiagnosticsProperty<Color?>('iconBackground', iconBackground,
        defaultValue: null));
    properties.add(DiagnosticsProperty<AuthIconType?>('iconType', iconType,
        defaultValue: null));
    properties.add(DiagnosticsProperty<Color?>('shadowColor', shadowColor,
        defaultValue: null));
    properties.add(DiagnosticsProperty<Color?>(
        'progressIndicatorColor', progressIndicatorColor,
        defaultValue: null));
    properties.add(DiagnosticsProperty<Color?>(
        'progressIndicatorValueColor', progressIndicatorValueColor,
        defaultValue: null));
    properties.add(DiagnosticsProperty<double?>(
        'progressIndicatorStrokeWidth', progressIndicatorStrokeWidth,
        defaultValue: null));
    properties.add(DiagnosticsProperty<double?>(
        'progressIndicatorValue', progressIndicatorValue,
        defaultValue: null));
    properties.add(DiagnosticsProperty<Color?>('iconColor', iconColor,
        defaultValue: null));
    properties.add(DiagnosticsProperty<AuthIndicatorType>(
        'progressIndicatorType', progressIndicatorType,
        defaultValue: null));
    properties.add(DiagnosticsProperty<VisualDensity?>(
        'visualDensity', visualDensity,
        defaultValue: null));
    properties.add(DiagnosticsProperty<MaterialTapTargetSize?>(
        'tapTargetSize', tapTargetSize,
        defaultValue: null));
    // @formatter:on
  }
}
