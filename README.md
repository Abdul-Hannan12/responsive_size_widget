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

## Usage

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

### Example 1: Basic Usage

```dart
    import 'package:flutter/material.dart';
    import 'package:responsive_size_widget/responsive_size_widget.dart';

    class MyHomePage extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return Scaffold(
                body: Responsive(
                    largeScreen: Center(child: Text('Large Screen')),
                    mediumScreen: Center(child: Text('Medium Screen')),
                    smallScreen: Center(child: Text('Small Screen')),
                ),
            );
        }
    }

```

### Example 2: Checking for Screen Size

```dart
    import 'package:flutter/material.dart';
    import 'package:responsive_size_widget/responsive_size_widget.dart';

    class MyHomePage extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return Scaffold(
                body: Container(
                    child: Center(
                        child: Text(
                            Responsive.isLargeScreen(context)
                                ? 'Large Screen'
                                : Responsive.isMediumScreen(context)
                                    ? 'Medium Screen'
                                    : 'Small Screen',
                        ),
                    ),
                ),
            );
        }
    }

```

### Example 3: Using Max Width

```dart
    import 'package:flutter/material.dart';
    import 'package:responsive_size_widget/responsive_size_widget.dart';

    class MyHomePage extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return Scaffold(
                body: Container(
                    child: Center(
                        child: Text(
                            Responsive.maxWidth(context, 500)
                                ? 'Screen width is less than or equal to 500'
                                : 'Screen width is greater than 500',
                        ),
                    ),
                ),
            );
        }
    }


```

### Example 4: Using Percent Width

```dart
    import 'package:flutter/material.dart';
    import 'package:responsive_size_widget/responsive_size_widget.dart';

    class MyHomePage extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return Scaffold(
                body: Container(
                    child: Center(
                        child: Text(
                            '50% of screen width is ${Responsive.percentWidth(context, 50)}',
                        ),
                    ),
                ),
            );
        }
    }

```

## Contributing

If you find a bug or want to suggest a feature, please open an issue. Contributions are also welcome! If you want to contribute code, please fork the repository and submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
