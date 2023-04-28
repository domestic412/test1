// const rootRoute = "/";

// const overviewPageDisplayName = "Overview";
// const overviewPageRoute = "/overview";

// const driversPageDisplayName = "Drivers";
// const driversPageRoute = "/drivers";

// const clientsPageDisplayName = "Clients";
// const clientsPageRoute = "/clients";

// const authenticationPageDisplayName = "Log out";
// const authenticationPageRoute = "/auth";

// class MenuItem {
//   final String name;
//   final String route;

//   MenuItem(this.name, this.route);
// }

// List<MenuItem> sideMenuItemRoutes = [
//   MenuItem(overviewPageDisplayName, overviewPageRoute),
//   MenuItem(driversPageDisplayName, driversPageRoute),
//   MenuItem(clientsPageDisplayName, clientsPageRoute),
//   MenuItem(authenticationPageDisplayName, authenticationPageRoute),
// ];
const rootRoute = "/";

// const OverViewPageDisplayName = 'Overview';
// const OverViewPageRoute = '/overview';
const DriversPageDisplayName = 'Tra cứu Container';
const DriversPageRoute = '/trucking';
const ClientsPageDisplayName = 'Đặt chỗ';
const ClientsPageRoute = '/booking';
const AuthenticationPageDisplayName = '/Logout';
const AuthenticationPageRoute = 'Authentication';

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItems = [
  // MenuItem(OverViewPageDisplayName, OverViewPageRoute),
  MenuItem(DriversPageDisplayName, DriversPageRoute),
  MenuItem(ClientsPageDisplayName, ClientsPageRoute),
  MenuItem(AuthenticationPageDisplayName, AuthenticationPageRoute),
];
