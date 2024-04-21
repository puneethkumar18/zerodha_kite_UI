import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:zerodha_kite_app/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splassh-screen';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: "assets/images/icon.jpeg",
        nextScreen: const HomeScreen(),
      ),
    );
  }
}
