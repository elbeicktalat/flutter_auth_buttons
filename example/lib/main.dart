// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoading = false;
  bool darkMode = true;

  @override
  Widget build(BuildContext context) {
    const String appName = 'Auth Buttons Example';
    const AuthButtonType? buttonType = null;
    const AuthIconType? authIconType = null;
    Divider _divider = Divider(height: 24);
    return MaterialApp(
      title: appName,
      themeMode: (darkMode) ? ThemeMode.dark : ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appName),
          actions: [
            Switch(
              value: darkMode,
              onChanged: (value) {
                setState(() {
                  darkMode = value;
                });
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 24),
              GoogleAuthButton(
                onPressed: () {
                  // your implementation
                  setState(() {
                    isLoading = !isLoading;
                  });
                },
                darkMode: darkMode,
                isLoading: isLoading,
                style: const AuthButtonStyle(
                  buttonType: buttonType,
                  iconType: authIconType,
                ),
              ),
              _divider,
              AppleAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                isLoading: isLoading,
                style: const AuthButtonStyle(
                  buttonType: buttonType,
                  iconType: authIconType,
                ),
              ),
              _divider,
              FacebookAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                isLoading: isLoading,
                style: const AuthButtonStyle(
                  buttonType: buttonType,
                  iconType: authIconType,
                ),
              ),
              _divider,
              GithubAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                isLoading: isLoading,
                style: const AuthButtonStyle(
                  buttonType: buttonType,
                  iconType: authIconType,
                ),
              ),
              _divider,
              MicrosoftAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                isLoading: isLoading,
                style: const AuthButtonStyle(
                  buttonType: buttonType,
                  iconType: authIconType,
                ),
              ),
              _divider,
              TwitterAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                isLoading: isLoading,
                style: const AuthButtonStyle(
                  buttonType: buttonType,
                  iconType: authIconType,
                ),
              ),
              _divider,
              EmailAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                isLoading: isLoading,
                style: const AuthButtonStyle(
                  buttonType: buttonType,
                  iconType: authIconType,
                ),
              ),
              _divider,
              HuaweiAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                isLoading: isLoading,
                style: const AuthButtonStyle(
                  buttonType: buttonType,
                  iconType: authIconType,
                ),
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
