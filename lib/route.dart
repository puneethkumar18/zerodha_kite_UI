import 'package:flutter/material.dart';
import 'package:zerodha_kite_app/screens/landing_screen.dart';
import 'package:zerodha_kite_app/screens/login_screen.dart';
import 'package:zerodha_kite_app/screens/search_screen.dart';
import 'package:zerodha_kite_app/screens/splash_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LandingScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const LandingScreen(),
      );
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const LoginScreen(),
      );
    case SplashScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const SplashScreen(),
      );
    case SearchScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const SearchScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const LandingScreen(),
      );
  }
}
