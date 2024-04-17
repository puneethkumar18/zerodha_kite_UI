import 'package:flutter/material.dart';
import 'package:zerodha_kite_app/screens/landing_screen.dart';
import 'package:zerodha_kite_app/screens/login_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LandingScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const LandingScreen(),
      );
    case LandingScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const LoginScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const LandingScreen(),
      );
  }
}
