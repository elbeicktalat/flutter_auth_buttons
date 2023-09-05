### [3.0.2] - 05 Set 2023
- Pass static analytics.
- Fix isNotEmpty & use RegExp 

### [3.0.1] - 03 Set 2023

- Update dependencies
- Fix window deprecation
- Use `ColorFilter.mode` instead of deprecated `color`

#### `Visible for collaborates`

- Format the hole project
- Add very strict analysis rules

### [3.0.0] - 21 Jun 2022

- Add `InheritedAuthButton`
- Add `AuthButtonGroup` widget
- Deprecate darkMode, use `ThemeMode` which allows following the system `Brightness`.
- Deprecate trl, use `TextDirection` for more cleaner API.
- Add progressIndicatorType in the style, this allows to choose between `CircularProgressIndicator`
  or `LinearProgressIndicator`.
- Add visualDensity, tapTargetSize, margin in the style.
- Add materialStyle property, this allows the usage of `ButtonStyle` form material.
- Default icons color will be never white on secondary button type.
- Add support for network and non svg icons.
- Add onHover and other attributes.

### [2.0.4] - 07 Jan 2022

- Run dart format.

### [2.0.3] - 16 Dic 2021

#### `Visible for collaborates`

- Update flutter_svg to 1.0.0.
- Add AuthIcon widget.
- Delete all white images.
- Delete smart_color.
- Add default style for custom button.

### [2.0.2] - 16 Nov 2021

#### `Visible for you`

- Buttons are identical as screenshots.

#### `Visible for collaborates`

- Remove the implementations of button style in base package.
- No more need to check if style is null.
- Add more then 300 unit tests.

### [2.0.1] - 14 Nov 2021

- Show screenshots in the readme.

### [2.0.0] - 14 Nov 2021

#### `Visible for you`

- Follow the guidelines indications for the buttons appearance.
- Support SVG image format.
- Allow disabling buttons.
- Add `Icon color` style property.
- Documentation the enter project using also inherited docs.
- Update `icons` resources.
- Add github secondary icon.
- Add twitter secondary icon.

#### `Visible for collaborates`

- Divide shared package into three main packages.
- Make methods more readable by using helpers functions.

### [1.0.1+3] - 10 May 2021

- Fix default buttons padding.

### [1.0.1+2] - 10 May 2021

- Pass static analytics.

### [1.0.1+1] - 09 May 2021

- Pass static analytics.
- Fix `CircularProgressIndicator` size.

### [1.0.1] - 15 Apr 2021

- Show a `CircularProgressIndicator` when the `isLoading` is true.
- Rename the `AuthButtonStyle` to `AuthButtonType`.
- Rename the `AuthIconStyle` to `AuthIconType`.
- Make all styling stuff below the `AuthButtonStyle` to be more organized then before.

### [1.0.0] - 01 Mar 2021

- Migration to sound null safety
- Migration to ElevateButton instead of RaisedButton.
- New Icon styles, `outlined` & `secondary`.
- Add Keys with default values.
- Add onLongPressed parameter.
- Add shadowColor parameter.

### [0.0.6] - 06 Feb 2021

- New style, `secondary style`.
- Add auth with `Huawei` button.
- Add a custom button where you can give it any image as icon. This button is very helpful special
  when you want to add some button not exist in this library, and maintain the same style.
- Too many change in the code structure, but you'll still using everything in the same way. There
  are no conflict with the previous versions.
- Add unit test to check the default values.

### [0.0.5] - 31 Jun 2021

- Enable other size.
- Add auth with `Email` button.
- Docs the Api.

### [0.0.4] - 31 Oct 2020

- Add new style, `icon style`.
- Add Microsoft button.

### [0.0.3] - 27 Oct 2020

- Submit to stable.
- Add GitHub button.

### [0.0.2] - 25 Oct 2020

- Alpha version.

### [0.0.1] - 25 Oct 2020

- First publication.
