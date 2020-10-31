# auth_buttons
[![Pub Version](https://img.shields.io/pub/v/auth_buttons?color=blue&logo=dart)](https://pub.dev/packages/auth_buttons)

Auth Buttons is a flutter widget library, include buttons for authenticating with the most popular 
social networks like: Google, Facebook, Apple and too other.

## Installation
1) add this to your packages pubspec.yaml file:
```yaml
dependencies:
  auth_buttons: ^0.0.4
```
2) Install it 
You can install it from the command line:
```
$ flutter pub get
```
3) Import it 
Now in Dart code, you can use:
```dart
import 'package:auth_buttons/auth_buttons.dart';
```


## Using
 
You need to use just the following code: 

![Example 1](readme_assets/icons_light.PNG)
```dart
GoogleAuthButton(
  onPressed: () {},
  darkMode: false,
  style: AuthButtonStyle.icon,
),
```
![Example 2](readme_assets/icons_dark.PNG)
```dart
GoogleAuthButton(
  onPressed: () {},
  darkMode: true,
  style: AuthButtonStyle.icon,
),
```

![Example 3](readme_assets/full_button_light.PNG)
```dart
GoogleAuthButton(
  onPressed: () {},
  darkMode: false,
),
```

![Example 4](readme_assets/full_button_dark.PNG)
```dart
GoogleAuthButton(
  onPressed: () {},
  darkMode: true,
),
```

Do same think with the other buttons, when you want customize any button 
you can do it just passing a property which you want.