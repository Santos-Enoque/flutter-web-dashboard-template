import 'package:flutter/material.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallSceenSize = 360;
const int customScreenSize = 1100;




class ResponsiveWidget extends StatelessWidget {
  // the custom screen size is specific to this project
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;
  final Widget customScreen;


  const ResponsiveWidget({
    Key key,
    @required this.largeScreen,
    this.mediumScreen,
    this.smallScreen, this.customScreen,
  }) : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < mediumScreenSize;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= mediumScreenSize &&
        MediaQuery.of(context).size.width < largeScreenSize;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > largeScreenSize;
  }


  static bool isCustomSize(BuildContext context) {
    return MediaQuery.of(context).size.width <= customScreenSize &&
        MediaQuery.of(context).size.width >= mediumScreenSize;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= largeScreenSize) {
          return largeScreen;
        } else if (constraints.maxWidth < largeScreenSize &&
            constraints.maxWidth >= mediumScreenSize) {
          return mediumScreen ?? largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}
