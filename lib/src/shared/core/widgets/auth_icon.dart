// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthIcon extends StatelessWidget {
  const AuthIcon(
    this.iconUrl, {
    super.key,
    this.color,
    this.iconSize,
  });

  final String iconUrl;
  final Color? color;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: iconSize,
      height: iconSize,
      child: SvgPicture.asset(
        iconUrl,
        color: color,
      ),
    );
  }
}
