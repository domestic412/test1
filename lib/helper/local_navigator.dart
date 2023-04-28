import 'package:flutter/material.dart';
import 'package:test1/constants/controller.dart';
import 'package:test1/routing/router.dart';

import '../routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: DriversPageRoute,
      onGenerateRoute: generateRoute,
    );
