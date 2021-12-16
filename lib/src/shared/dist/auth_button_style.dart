// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

///[AuthButtonStyle] holds all visual properties which can have a auth button.
@immutable
class AuthButtonStyle with Diagnosticable {
  const AuthButtonStyle({
    this.buttonColor,
    this.splashColor,
    this.elevation,
    this.borderRadius,
    this.textStyle,
    this.padding,
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
  });

  /// {@template buttonColor}
  ///
  ///**[buttonColor]** Define the button color.
  /// The default value is [white] if the [darkMode] = [false].
  /// else the value is [Color(0xff424242)].
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/dark-mode-default.png)
  ///
  /// You can also give it any color you want.
  ///```dart
  ///color: Colors.amberAccent,
  ///```
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/button-color-amber.png)
  ///
  /// {@endtemplate}
  final Color? buttonColor;

  /// {@template splashColor}
  ///
  ///**[splashColor]** Define the color when the button is onPressed.
  ///The default value is [Colors.grey].
  ///
  /// {@endtemplate}
  final Color? splashColor;

  /// {@template elevation}
  ///
  ///**[elevation]** Define the elevation button, the default value is [2.0].
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/elevation.png)
  ///
  /// {@endtemplate}
  final double? elevation;

  /// {@template borderRadius}
  ///
  ///**[borderRadius]** Define the border radius, the default value is [8.0].
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  ///Sure you can give it any other value.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/border-radius.png)
  ///
  /// {@endtemplate}
  final double? borderRadius;

  /// {@template padding}
  ///
  ///**[padding]** Define the button padding, the default value is [null],
  /// when the [style] = [AuthButtonStyle.icon],
  /// the value is equal to [0.0], for the default is equal to
  /// ```dart
  /// EdgeInsets.only(left: 16.0, right: 16.0, top: 6.0, bottom: 6.0)
  /// ```
  ///
  /// {@endtemplate}
  final EdgeInsets? padding;

  /// {@template textStyle}
  ///
  ///**[textStyle]** Define the text style.
  ///
  ///You can customise the text style how you prefer example:
  /// ```dart
  ///textStyle: TextStyle(
  ///   color: Colors.red[800],
  ///   fontSize: 16.0,
  ///   fontWeight: FontWeight.bold,
  ///   fontStyle: FontStyle.italic,
  ///   letterSpacing: 2.0,
  /// ),
  /// ```
  /// <br/>
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/text-style.png)
  ///
  /// {@endtemplate}
  final TextStyle? textStyle;

  /// {@template borderColor}
  ///
  ///**[borderColor]** Define the border color around the button.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-icon.png)
  ///
  /// ```dart
  /// borderColor: Colors.amber
  /// ```
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/border-color-amber.png)
  ///
  /// ```dart
  /// borderColor: Colors.green
  /// ```
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/border-color-green.png)
  ///
  /// {@endtemplate}
  final Color? borderColor;

  /// {@template borderWidth}
  ///
  ///**[borderWidth]** Define the border width around the button.
  ///
  ///The default value is [null], when the [style] = [AuthButtonStyle.icon],
  ///the value is [2.0].
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/border-width-soft.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/border-width-medium.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/border-width-large.png)
  ///
  /// {@endtemplate}
  final double? borderWidth;

  /// {@template buttonType}
  ///
  ///**[buttonType]** Define the button Type.
  ///
  /// This is the default Type:
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/google.png)
  ///
  ///```dart
  ///buttonType: AuthButtonType.icon,
  ///```
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/google-icon.png)
  ///
  ///```dart
  ///buttonType: AuthButtonType.secondary,
  ///```
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/buttons/google-secondary.png)
  ///
  /// {@endtemplate}
  final AuthButtonType? buttonType;

  /// {@template width}
  ///
  ///**[width]** Define the button width, the default value is the minimum.
  ///
  /// {@endtemplate}
  final double? width;

  /// {@template height}
  ///
  ///**[height]** Define the height button, the default value is the minimum.
  ///
  /// {@endtemplate}
  final double? height;

  /// {@template iconSize}
  ///
  ///**[iconSize]** Define the size of the icon, the default value is [35.0].
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  /// Also you can give it any size.
  ///
  /// ```dart
  ///iconSize: 25.0,
  /// ```
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/icon-size-small.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/icon-size-big.png)
  ///
  /// {@endtemplate}
  final double? iconSize;

  /// {@template separator}
  ///
  ///**[separator]** Define the value of the space between the [Icon] and the [Text].
  ///the default value is [10.0].
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/style-default.png)
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/doc/api/assets/separator.png)
  ///
  /// {@endtemplate}
  final double? separator;

  /// {@template iconBackground}
  ///
  ///**[iconBackground]** Define the background icon,
  /// when the **[style]** is equal to **[AuthButtonStyle.secondary]**
  ///
  /// {@endtemplate}
  final Color? iconBackground;

  /// {@template iconType}
  ///
  ///**[iconType]** Define the icon type.
  ///
  /// This's the **default** icon.
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/lib/images/default/google.svg)
  ///
  ///when the **[iconType]** is equal to **[AuthIconType.outlined]**
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/lib/images/outlined/google.svg)
  ///
  ///when the **[iconType]** is equal to **[AuthIconType.secondary]**
  ///
  ///![](https://raw.githubusercontent.com/elbeicktalat/flutter_auth_buttons/master/lib/images/secondary/google.svg)
  ///
  /// {@endtemplate}
  final AuthIconType? iconType;

  /// {@template shadowColor}
  ///
  ///**[shadowColor]** Define the color of the the shadow behind the button.
  ///
  /// {@endtemplate}
  final Color? shadowColor;

  /// {@template iconColor}
  ///
  ///**[iconColor]** Define the color icon, by default icons are NOT colored.
  /// if the buttons are disabled the icon color is **#e5e5e5**.
  ///
  /// {@endtemplate}
  final Color? iconColor;

  final Color? progressIndicatorColor;
  final Color? progressIndicatorValueColor;
  final double? progressIndicatorStrokeWidth;
  final double? progressIndicatorValue;

  /// Returns a copy of this AuthButtonStyle with the given fields replaced with
  /// the new values.
  AuthButtonStyle copyWith({
    Color? buttonColor,
    Color? splashColor,
    double? elevation,
    double? borderRadius,
    EdgeInsets? padding,
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
  }) {
    return AuthButtonStyle(
      buttonColor: buttonColor ?? this.buttonColor,
      splashColor: splashColor ?? this.splashColor,
      elevation: elevation ?? this.elevation,
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
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
    );
  }

  @override
  int get hashCode {
    return hashList([
      buttonColor,
      splashColor,
      elevation,
      borderRadius,
      padding,
      textStyle,
      borderColor,
      borderWidth,
      buttonType,
      width,
      height,
      iconSize,
      separator,
      iconBackground,
      iconType,
      shadowColor,
      progressIndicatorColor,
      progressIndicatorValueColor,
      progressIndicatorStrokeWidth,
      progressIndicatorValue,
      iconColor,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    return other is AuthButtonStyle &&
        other.buttonColor == buttonColor &&
        other.splashColor == splashColor &&
        other.elevation == elevation &&
        other.borderRadius == borderRadius &&
        other.padding == padding &&
        other.textStyle == textStyle &&
        other.borderColor == borderColor &&
        other.borderWidth == borderWidth &&
        other.buttonType == buttonType &&
        other.width == width &&
        other.height == height &&
        other.iconSize == iconSize &&
        other.separator == separator &&
        other.iconBackground == iconBackground &&
        other.iconType == iconType &&
        other.shadowColor == shadowColor &&
        other.progressIndicatorColor == progressIndicatorColor &&
        other.progressIndicatorValueColor == progressIndicatorValueColor &&
        other.progressIndicatorStrokeWidth == progressIndicatorStrokeWidth &&
        other.progressIndicatorValue == progressIndicatorValue &&
        other.iconColor == iconColor;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
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
  }
}
