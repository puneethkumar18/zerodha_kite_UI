import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_app/utils/stock_tile.dart';

class LandingScreen extends StatefulWidget {
  static const String routeName = '/landing-page';
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(31, 41, 55, 1),
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
          bottom: const TabBar(
            dividerColor: Colors.transparent,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.blueAccent,
            labelColor: Colors.blueAccent,
            tabs: [
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
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10,right: 10,left: 10),
                    child: TextFormField(
                      controller: searchController,
                      decoration:  InputDecoration(
                        hintText: 'search & add',
                        prefixIcon: const Icon(
                          Icons.search_sharp,
                          color: Colors.grey,
                        ),
                        fillColor: const  Color.fromRGBO(50, 50, 50, 1),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            width: 0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            width: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromRGBO(24, 32, 41, 2)),
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return StockTile(context: context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width - 10,
              margin: const EdgeInsets.all(10),
              color: Colors.amberAccent,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width - 10,
              margin: const EdgeInsets.all(10),
              color: Colors.blueAccent,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width - 10,
              margin: const EdgeInsets.all(10),
              color: Colors.blueAccent,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width - 10,
              margin: const EdgeInsets.all(10),
              color: Colors.blueAccent,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width - 10,
              margin: const EdgeInsets.all(10),
              color: Colors.blueAccent,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width - 10,
              margin: const EdgeInsets.all(10),
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
