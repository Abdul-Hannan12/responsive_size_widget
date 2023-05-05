# Responsive Size Widget

A Flutter package that provides a simple and easy way to create responsive widgets for different screen sizes.

## Features

- Allows you to create widgets that are responsive to different screen sizes.
- Provides helper methods to easily determine the current screen size.
- Supports customizable screen size values.
- Simple and easy to use.

## Installation

Add the following line to your `pubspec.yaml` file:

```yaml
dependencies:
  responsive_size_widget: ^1.0.0
```

Then run flutter pub get to install the package.

### Usage

Import the package using:

```dart
    import 'package:responsive_size_widget/responsive_size_widget.dart';
```

Wrap your widget with the Responsive widget like so:

```dart
    Responsive(
        largeScreen: MyLargeScreenWidget(),
        mediumScreen: MyMediumScreenWidget(),
        smallScreen: MySmallScreenWidget(),
    )
```

This will display the appropriate widget based on the current screen size.

### Contributing

If you find a bug or want to suggest a feature, please open an issue. Contributions are also welcome! If you want to contribute code, please fork the repository and submit a pull request.

### License

This project is licensed under the [MIT License](LICENSE).
