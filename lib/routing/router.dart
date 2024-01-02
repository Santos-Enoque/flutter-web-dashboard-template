import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/pages/hosted/widgets/hosted_table.dart';
import 'package:flutter_web_dashboard/pages/hosting/widgets/hosting_table.dart';
import 'package:flutter_web_dashboard/pages/overview/overview.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overviewPageRoute:
      return _getPageRoute(const OverviewPage());
    case hostingTableRoute:
      return _getPageRouteStack(const HostingTable());
    case hostedTableRoute:
      return _getPageRouteStack(
        const HostedTable(),
      );
    default:
      return _getPageRoute(const OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}

PageRoute _getPageRouteStack(Widget firstChild) {
  return MaterialPageRoute(
    builder: (context) => Navigator(
      onGenerateRoute: (settings) {
        final routes = <String, WidgetBuilder>{
          '/': (context) => firstChild,
          overviewPageRoute: (context) {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).popUntil(ModalRoute.withName('/'));
            }
            return const OverviewPage();
          },
        };
        WidgetBuilder builder = routes[settings.name]!;
        return MaterialPageRoute(builder: (context) => builder(context));
      },
    ),
  );
}
