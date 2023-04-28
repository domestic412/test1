import 'package:flutter/material.dart';
import 'package:test1/routing/routes.dart';

import '../pages/authentication/authentication.dart';
import '../pages/clients/clients.dart';
import '../pages/drivers/drivers.dart';
import '../pages/overview/overview.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    // case OverViewPageRoute:
    //   return _getPageRoute(OverViewPage());
    case DriversPageRoute:
      return _getPageRoute(DriversPage());
    case ClientsPageRoute:
      return _getPageRoute(ClientsPage());
    default:
      return _getPageRoute(OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
