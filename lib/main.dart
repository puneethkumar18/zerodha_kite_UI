import 'package:flutter/material.dart';
import 'package:zerodha_kite_app/route.dart';
import 'package:zerodha_kite_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zerodha kite app',
      theme: ThemeData.dark(
        useMaterial3: true
      ).copyWith(
        scaffoldBackgroundColor: const Color.fromRGBO(31, 41, 55, 1),
        appBarTheme: const AppBarTheme(
          color: Color.fromRGBO(31, 41, 55, 1),
        )
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const HomeScreen(),
    );
  }
}
