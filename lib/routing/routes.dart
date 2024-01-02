const rootRoute = "/";

const overviewPageDisplayName = "Overview";
const overviewPageRoute = "/overview";

const hostingTableDisplayName = "Live Events";
const hostingTableRoute = "/live events";

const hostedTableDisplayName = "Hosted Events";
const hostedTableRoute = "/hosted";

const authenticationPageDisplayName = "Log out";
const authenticationPageRoute = "/auth";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItemRoutes = [
  MenuItem(overviewPageDisplayName, overviewPageRoute),
  MenuItem(hostingTableDisplayName, hostingTableRoute),
  MenuItem(hostedTableDisplayName, hostedTableRoute),
  MenuItem(authenticationPageDisplayName, authenticationPageRoute),
];
