// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/helpers/auth_string_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// The widget icon shown in all [AuthButton]s.
///
/// This can accept extensions supported by [Image], it also accept SVG.
///
/// Provide an icon by using [iconPath] for the local icons or [iconUrl] for the network one.
class AuthIcon extends StatelessWidget {
  AuthIcon({
    super.key,
    this.iconPath,
    this.iconUrl,
    this.color,
    this.iconSize = 40,
  })  : assert(
          iconPath != null && iconPath.isNotBlank ||
              iconUrl != null && iconUrl.isNotBlank,
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
          color: color,
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
          color: color,
        ),
      );
    }
    return Container();
  }
}
