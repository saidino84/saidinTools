import 'package:flutter/cupertino.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget android;
  final Widget tablet;
  final Widget desktop;

  static int tableLimit = 1200;
  static int iphoneLimit = 640;
  static int androidLimit = 640; //850;
  static int desktopLimit = 1200;

  static bool isAndroid(BuildContext context) =>
      MediaQuery.of(context).size.width < androidLimit;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >=
      androidLimit; //so quando for maior ou igual as larguras de 1200
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < tableLimit &&
      MediaQuery.of(context).size.width >=
          androidLimit; //laguras entre android a tablet [de 600...850..1200]

  const ResponsiveLayout(
      {Key? key,
      required this.android,
      required this.desktop,
      required this.tablet});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth < androidLimit) {
        return android;
      }
      if (constraints.maxWidth < tableLimit) {
        return tablet;
      } else {
        return desktop;
      }
    });
  }
}
