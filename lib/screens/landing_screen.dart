import 'package:flutter/material.dart';
import 'package:zerodha_kite_app/model/stock_details.dart';
import 'package:zerodha_kite_app/widgets/whishlist_page.dart';

class LandingScreen extends StatefulWidget {
  static const String routeName = '/landing-page';
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final TextEditingController searchController = TextEditingController();
  List<StockDetails> stocks = [
    StockDetails(name: "IDFC", price: 110.40, category: "NSE"),
    StockDetails(name: "IRFC", price: 140.95, category: "NSE"),
    StockDetails(name: "JIOFIN", price: 344.65, category: "NSE"),
    StockDetails(name: "ASIANPAITS", price: 2841.50, category: "NSE"),
  ];

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

void onTap(){
 
}
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
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
            "Watchlist",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom:  TabBar(
            dividerColor: Colors.transparent,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.blueAccent,
            labelColor: Colors.blueAccent,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            onTap: (value){

            },
            tabs: const [
              Tab(
                text: "Watchlist 1",
                height: 50,
              ),
              Tab(
                text: "Watchlist 2",
                height: 50,
              ),
              Tab(
                text: "Watchlist 3",
                height: 50,
              ),
              Tab(
                text: "Watchlist 4",
                height: 50,
              ),
              Tab(
                text: "Watchlist 5",
                height: 50,
              ),
              Tab(
                text: "Watchlist 6",
                height: 50,
              ),
              Tab(
                text: "Watchlist 7",
                height: 50,
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            WishlistPage(onTap: onTap, stocks: stocks),
            WishlistPage(onTap: onTap, stocks: stocks),
            WishlistPage(onTap: onTap, stocks: stocks),
            WishlistPage(onTap: onTap, stocks: stocks),
            WishlistPage(onTap: onTap, stocks: stocks),
            WishlistPage(onTap: onTap, stocks: stocks),
            WishlistPage(onTap: onTap, stocks: stocks),
                      ],
        ),
      ),
    );
  }
}
