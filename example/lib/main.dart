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
    const AuthButtonType? buttonType = AuthButtonType.secondary;
    const AuthIconType? authIconType = AuthIconType.outlined;
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
          child: Container(
            width: double.infinity,
            color: darkMode ? const Color(0xff303030) : Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
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
                  const Divider(),
                  AppleAuthButton(
                    onPressed: () {},
                    darkMode: darkMode,
                    isLoading: isLoading,
                    style: const AuthButtonStyle(
                      buttonType: buttonType,
                      iconType: authIconType,
                    ),
                  ),
                  const Divider(),
                  FacebookAuthButton(
                    onPressed: () {},
                    darkMode: darkMode,
                    isLoading: isLoading,
                    style: const AuthButtonStyle(
                      buttonType: buttonType,
                      iconType: authIconType,
                    ),
                  ),
                  const Divider(),
                  GithubAuthButton(
                    onPressed: () {},
                    darkMode: darkMode,
                    isLoading: isLoading,
                    style: const AuthButtonStyle(
                      buttonType: buttonType,
                      iconType: authIconType,
                    ),
                  ),
                  const Divider(),
                  MicrosoftAuthButton(
                    onPressed: () {},
                    darkMode: darkMode,
                    isLoading: isLoading,
                    style: const AuthButtonStyle(
                      buttonType: buttonType,
                      iconType: authIconType,
                    ),
                  ),
                  const Divider(),
                  TwitterAuthButton(
                    onPressed: () {},
                    darkMode: darkMode,
                    isLoading: isLoading,
                    style: const AuthButtonStyle(
                      buttonType: buttonType,
                      iconType: authIconType,
                    ),
                  ),
                  const Divider(),
                  EmailAuthButton(
                    onPressed: () {},
                    darkMode: darkMode,
                    isLoading: isLoading,
                    style: const AuthButtonStyle(
                      buttonType: buttonType,
                      iconType: authIconType,
                    ),
                  ),
                  const Divider(),
                  HuaweiAuthButton(
                    onPressed: () {},
                    darkMode: darkMode,
                    isLoading: isLoading,
                    style: const AuthButtonStyle(
                      buttonType: buttonType,
                      iconType: authIconType,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
