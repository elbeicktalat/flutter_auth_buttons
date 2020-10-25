import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';

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
    return MaterialApp(
      title: appName,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appName),
        ),
        body: Center(
          child: TwitterAuthButton(
            onPressed: () {},
            darkMode: true,
          ),
        ),
      ),
    );
  }
}
