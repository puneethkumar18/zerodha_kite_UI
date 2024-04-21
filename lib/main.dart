import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:zerodha_kite_app/firebase_options.dart';
import 'package:zerodha_kite_app/provider/custom_search_provider.dart';
import 'package:zerodha_kite_app/provider/notification_provider.dart';
import 'package:zerodha_kite_app/provider/user_provider.dart';
import 'package:zerodha_kite_app/route.dart';
import 'package:zerodha_kite_app/screens/home_screen.dart';
import 'package:zerodha_kite_app/screens/login_screen.dart';
import 'package:zerodha_kite_app/screens/profile_screen.dart';
import 'package:zerodha_kite_app/screens/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
        Provider(create: (_) => NotificationProvider()),
        ChangeNotifierProvider(create: (context) => CustomSearchProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //final user = Provider.of<UserProvider>(context, listen: true).user;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zerodha kite app',
      theme: ThemeData.dark(useMaterial3: true).copyWith(
          scaffoldBackgroundColor: const Color.fromRGBO(31, 41, 55, 1),
          appBarTheme: const AppBarTheme(
            color: Color.fromRGBO(31, 41, 55, 1),
          )),
      onGenerateRoute: (settings) => generateRoute(settings),
      initialRoute: SplashScreen.routeName,
      
    );
  }
}
