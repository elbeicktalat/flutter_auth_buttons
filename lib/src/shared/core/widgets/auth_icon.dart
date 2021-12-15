// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthIcon extends StatelessWidget {
  AuthIcon(this.iconUrl, {Key? key}) : super(key: key);

  final double? iconSize = const AuthButtonStyle().iconSize;
  final Color? iconColor = const AuthButtonStyle().iconColor;
  final String iconUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: iconSize,
      height: iconSize,
      child: SvgPicture.asset(
        iconUrl,
        color: iconColor,
      ),
    );
  }
}
