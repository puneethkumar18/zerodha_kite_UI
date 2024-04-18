import 'package:flutter/material.dart';
import 'package:zerodha_kite_app/screens/bids_screen.dart';
import 'package:zerodha_kite_app/screens/landing_screen.dart';
import 'package:zerodha_kite_app/screens/orders_screen.dart';
import 'package:zerodha_kite_app/screens/port_folio_screen.dart';
import 'package:zerodha_kite_app/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/Home-Screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;

  List<Widget> pages = [
    const LandingScreen(),
    const OrdersScreen(),
    const PortFolioScreen(),
    const BidsScreen(),
    const ProfileScreen(),
  ];

  void onTap(index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(24, 32, 41, 2),
        onTap: onTap,
        elevation: 0,
        selectedFontSize: 12,
        currentIndex: pageIndex,
        selectedItemColor: Colors.blueAccent,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark_border,
              size: 35,
            ),
            label: "Watchlist",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              size: 30,
            ),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blueAccent,
            icon: Icon(
              Icons.account_balance,
              size: 30,
            ),
            label: "Portpolio",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blueAccent,
            icon: Icon(
              Icons.brightness_4_rounded,
              size: 30,
            ),
            label: "Bids",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
              size: 30,
            ),
            label: "Puneeth",
          ),
        ],
      ),
    );
  }
}
