// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// The widget icon shown in all [AuthButton]s.
///
/// This can accept extensions supported by [Image], it also accept SVG.
///
/// Provide an icon by using [iconPath] for the local icons or [iconUrl] for the network one.
class AuthIcon extends StatelessWidget {
  AuthIcon({
    this.iconPath,
    this.iconUrl,
    this.color,
    this.iconSize = 40,
    super.key,
  })  : assert(
          iconPath != null && iconPath.isNotEmpty && !iconPath.contains(' ') ||
              iconUrl != null && iconUrl.isNotEmpty && !iconUrl.contains(' '),
          'Must provide an icon source, which must be not blank',
        ),
        assert(
          iconPath == null || iconUrl == null,
          'Cannot accept two icon sources.',
        );

  /// The local assets path for an icon.
  ///
  /// If this is not null, than the [iconUrl] must be null.
  final String? iconPath;

  /// The network link for an icon.
  ///
  /// If this is not null, than the [iconPath] must be null.
  final String? iconUrl;

  /// The icon color, keep this null to use the provided icon color.
  final Color? color;

  /// The size of an icon, default value is 30.
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    if (iconPath != null) {
      if (!iconPath!.endsWith('.svg')) {
        return SizedBox(
          width: iconSize,
          height: iconSize,
          child: Image.asset(
            iconPath!,
            color: color,
          ),
        );
      }
      return SizedBox(
        width: iconSize,
        height: iconSize,
        child: SvgPicture.asset(
          iconPath!,
          colorFilter:
              color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
        ),
      );
    }
    if (iconUrl != null) {
      if (!iconUrl!.endsWith('.svg')) {
        return SizedBox(
          width: iconSize,
          height: iconSize,
          child: Image.network(
            iconUrl!,
            color: color,
          ),
        );
      }
      return SizedBox(
        width: iconSize,
        height: iconSize,
        child: SvgPicture.network(
          iconUrl!,
          theme: SvgTheme(currentColor: color ?? const Color(0xFF000000)),
        ),
      );
    }
    return const SizedBox.shrink();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    // @formatter:off
    super.debugFillProperties(properties);
    properties.add(StringProperty('iconPath', iconPath));
    properties.add(StringProperty('iconUrl', iconUrl));
    properties.add(ColorProperty('color', color));
    properties.add(DoubleProperty('iconSize', iconSize));
    // @formatter:on
  }
}
