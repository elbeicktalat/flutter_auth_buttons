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
  @override
  Widget build(BuildContext context) {
    String appName = 'Auth Buttons Example';
    bool darkMode = false;
    AuthButtonStyle authButtonStyle;
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
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
              ),
              Divider(),
              AppleAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
              ),
              Divider(),
              FacebookAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
              ),
              Divider(),
              GithubAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
              ),
              Divider(),
              MicrosoftAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
              ),
              Divider(),
              TwitterAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
              ),
              Divider(),
              EmailPasswordAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GoogleAuthButton(
                    onPressed: () {},
                    darkMode: darkMode,
                    style: authButtonStyle,
                    textStyle: TextStyle(
                      fontSize: 15,
                      color: darkMode ? Colors.white : Colors.black,
                    ),
                    iconSize: 25.0,
                  ),
                  MicrosoftAuthButton(
                    onPressed: () {},
                    darkMode: darkMode,
                    style: authButtonStyle,
                    iconSize: 25.0,
                    textStyle: TextStyle(
                      fontSize: 15,
                      color: darkMode ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
