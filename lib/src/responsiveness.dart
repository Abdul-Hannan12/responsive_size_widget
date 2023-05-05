import 'package:flutter/material.dart';

const int largeSize = 1366;
const int mediumSize = 768;
const int smallSize = 360;

class Responsive extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  static int? largeScreenSize;
  static int? mediumScreenSize;
  static int? smallScreenSize;

  const Responsive({
    Key? key,
    required this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
  }) : super(key: key);

  void setLargeScreenSize(int size) => largeScreenSize = size;
  void setMediumScreenSize(int size) => mediumScreenSize = size;
  void setSmallScreenSize(int size) => smallScreenSize = size;

  static int getLargeScreenSize() => largeScreenSize ?? largeSize;
  static int getMediumScreenSize() => mediumScreenSize ?? mediumSize;
  static int getSmallScreenSize() => smallScreenSize ?? smallSize;

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < getMediumScreenSize();

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= getMediumScreenSize() &&
      MediaQuery.of(context).size.width < getLargeScreenSize();

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= getLargeScreenSize();

  static bool maxWidth(BuildContext context, double width) {
    return MediaQuery.of(context).size.width <= width;
  }

  static double percentWidth(BuildContext context, double percent) =>
      MediaQuery.of(context).size.width * (percent / 100);

  static double percentHeight(BuildContext context, double percent) =>
      MediaQuery.of(context).size.height * (percent / 100);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        if (width >= getLargeScreenSize()) {
          return largeScreen;
        } else if (width < getLargeScreenSize() &&
            width >= getMediumScreenSize()) {
          return mediumScreen ?? largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}
