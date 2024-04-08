import 'package:flutter/material.dart';
import 'package:zerodha_kite_app/widgets/orders_page.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          actions: const [
            Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Colors.white,
              size: 40,
            ),
            SizedBox(
              width: 7,
            )
          ],
          title: const Text(
            "Orders",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: const TabBar(
            isScrollable: true,
            dividerColor: Colors.transparent,
            tabAlignment: TabAlignment.start,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.blueAccent,
            labelColor: Colors.blueAccent,
            padding: EdgeInsets.symmetric(horizontal: 10),
            tabs: [
              Tab(
                child: Text("open"),
              ),
              Tab(
                child: Text("Executed"),
              ),
              Tab(
                child: Text("GTT"),
              ),
              Tab(
                child: Text("Baskets"),
              ),
              Tab(
                child: Text("SIPs"),
              ),
              Tab(
                child: Text("Alerts"),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            OrdersPage(),
            OrdersPage(),
            OrdersPage(),
            OrdersPage(),
            OrdersPage(),
            OrdersPage(),
          ],
        ),
      ),
    );
  }
}
