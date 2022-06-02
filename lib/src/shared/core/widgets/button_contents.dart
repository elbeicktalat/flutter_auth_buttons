// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:auth_buttons/src/shared/dist/auth_button_style.dart';
import 'package:auth_buttons/src/utils/auth_button_progress_indicator.dart';
import 'package:auth_buttons/src/utils/auth_style.dart';
import 'package:flutter/material.dart';

class ButtonContents extends StatefulWidget {
  const ButtonContents({
    super.key,
    this.text = '',
    required this.authIcon,
    this.rtl = false,
    this.isLoading = false,
    this.style,
  });

  /// {@macro text}
  final String text;

  /// {@template authIcon}
  ///
  ///**[authIcon]** Define the icon to display.
  ///
  /// {@endtemplate}
  final AuthIcon authIcon;

  /// {@macro rtl}
  final bool rtl;

  /// {@macro isLoading}
  final bool isLoading;

  /// {@macro style}
  final AuthButtonStyle? style;

  @override
  State<ButtonContents> createState() => _ButtonContentsState();
}

class _ButtonContentsState extends State<ButtonContents> {
  final GlobalKey _textKey = GlobalKey();
  double? _textWidth;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => getTextWidgetWidth());
  }

  @override
  Widget build(BuildContext context) {
    final indicatorType = widget.style!.progressIndicatorType ??
        AuthButtonProgressIndicatorType.circular;
    return Row(
      key: widget.key,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      textDirection: widget.rtl ? TextDirection.rtl : null,
      children: <Widget>[
        Container(
          padding: (widget.style!.buttonType == AuthButtonType.secondary)
              ? const EdgeInsets.all(5.0)
              : null,
          decoration: BoxDecoration(
            color: widget.style!.iconBackground,
            borderRadius: BorderRadius.circular(
              widget.style!.borderRadius ?? 0.0,
            ),
          ),
          child: (widget.isLoading &&
                      widget.style!.buttonType == AuthButtonType.icon ||
                  indicatorType == AuthButtonProgressIndicatorType.circular)
              ? _buildCircularProgressIndicator()
              : widget.authIcon,
        ),
        SizedBox(width: widget.style!.separator),
        if (widget.isLoading &&
            widget.style!.buttonType != AuthButtonType.icon &&
            indicatorType == AuthButtonProgressIndicatorType.linear)
          _buildLinearProgressIndicator()
        else
          Text(key: _textKey, widget.text)
      ],
    );
  }

  void getTextWidgetWidth() {
    final renderBox = _textKey.currentContext?.findRenderObject() as RenderBox;
    _textWidth = renderBox.size.width;
  }

  Widget _buildCircularProgressIndicator() {
    return SizedBox(
      width: widget.style!.iconSize,
      height: widget.style!.iconSize,
      child: CircularProgressIndicator(
        backgroundColor: widget.style!.progressIndicatorColor,
        strokeWidth: widget.style!.progressIndicatorStrokeWidth ?? 4.0,
        valueColor: AlwaysStoppedAnimation<Color?>(
          widget.style!.progressIndicatorValueColor,
        ),
        value: widget.style!.progressIndicatorValue,
      ),
    );
  }

  Widget _buildLinearProgressIndicator() {
    return SizedBox(
      width: _textWidth,
      child: LinearProgressIndicator(
        backgroundColor: widget.style!.progressIndicatorColor,
        minHeight: widget.style!.progressIndicatorStrokeWidth ?? 4.0,
        value: widget.style!.progressIndicatorValue,
        valueColor: AlwaysStoppedAnimation<Color?>(
          widget.style!.progressIndicatorValueColor,
        ),
      ),
    );
  }
}
