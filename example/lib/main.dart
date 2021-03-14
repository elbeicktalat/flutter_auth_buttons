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
  bool isLoading;

  @override
  void initState() {
    isLoading = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String appName = 'Auth Buttons Example';
    bool darkMode = false;
    AuthButtonStyle authButtonStyle = AuthButtonStyle.icon;
    AuthIconStyle authIconStyle = AuthIconStyle.outlined;
    return MaterialApp(
      title: appName,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appName),
        ),
        body: Container(
          width: double.infinity,
          color: darkMode ? Color(0xff303030) : Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GoogleAuthButton(
                onPressed: () {
                  // your implementation
                  setState(() {
                    isLoading = !isLoading;
                  });
                },
                darkMode: darkMode,
                style: authButtonStyle,
                iconStyle: authIconStyle,
                isLoading: isLoading,
              ),
              Divider(),
              AppleAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
                iconStyle: authIconStyle,
                isLoading: isLoading,
              ),
              Divider(),
              FacebookAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
                iconStyle: authIconStyle,
                isLoading: isLoading,
              ),
              Divider(),
              GithubAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
                isLoading: isLoading,
              ),
              Divider(),
              MicrosoftAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
                iconStyle: authIconStyle,
                isLoading: isLoading,
              ),
              Divider(),
              TwitterAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
                iconStyle: authIconStyle,
                isLoading: isLoading,
              ),
              Divider(),
              EmailAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
                iconStyle: authIconStyle,
                isLoading: isLoading,
              ),
              Divider(),
              HuaweiAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
                iconStyle: authIconStyle,
                isLoading: isLoading,
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
