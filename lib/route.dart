import 'package:flutter/material.dart';
import 'package:my_app/screens/landing_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LandingScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const LandingScreen(),
      );

    default:
      return MaterialPageRoute(
        builder: (_) => const LandingScreen(),
      );
  }
}
