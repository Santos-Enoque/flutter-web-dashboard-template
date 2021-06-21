const rootRoute = "/";

const overviewPageDisplayName = "Overview";
const overviewPageRoute = "/overview";

const driversPageDisplayName = "Drivers";
const driversPageRoute = "/drivers";

const clientsPageDisplayName = "Clients";
const clientsPageRoute = "/clients";

const authenticationPageDisplayName = "Log out";
const authenticationPageRoute = "/auth";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}



List<MenuItem> sideMenuItemRoutes = [
 MenuItem(overviewPageDisplayName, overviewPageRoute),
 MenuItem(driversPageDisplayName, driversPageRoute),
 MenuItem(clientsPageDisplayName, clientsPageRoute),
 MenuItem(authenticationPageDisplayName, authenticationPageRoute),
];
