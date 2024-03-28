import 'package:flutter/material.dart';

class BidsScreen extends StatelessWidget {
  const BidsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
            "Portfolio",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: TabBar(
            dividerColor: Colors.transparent,
            isScrollable: true,
            tabAlignment: TabAlignment.center,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.blueAccent,
            labelColor: Colors.blueAccent,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            onTap: (value) {},
            tabs: const [
              Tab(
                text: "Auctions",
                height: 50,
              ),
              Tab(
                text: "IPOs",
                height: 50,
              ),
              Tab(
                text: "Govt.securities",
                height: 50,
              ),
            ],
          ),
        ),
        body:  TabBarView(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(25, 32, 45, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(25, 32, 45, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(25, 32, 45, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
