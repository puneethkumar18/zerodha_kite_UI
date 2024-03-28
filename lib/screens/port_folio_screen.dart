import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PortFolioScreen extends StatelessWidget {
  const PortFolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
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
          bottom: const TabBar(
            dividerColor: Colors.transparent,
            automaticIndicatorColorAdjustment: false,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 35),
            dragStartBehavior: DragStartBehavior.start,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.blueAccent,
            labelColor: Colors.blueAccent,
            padding: EdgeInsets.symmetric(horizontal: 10),
            tabs: [
              Tab(
                child: Text(
                  "Holdings",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Tab(
                child: Text(
                  "Positions",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 80),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(25, 32, 45, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: MediaQuery.sizeOf(context).width - 40,
                  margin: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(50, 64, 81, 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  "invested",
                                  style: TextStyle(
                                    color: Colors.white54,
                                  ),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  "26,153.00",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  "current",
                                  style: TextStyle(
                                    color: Colors.white54,
                                  ),
                                ),
                                Text(
                                  "27,280.00",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 7,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.white24,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "P&L",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white54),
                            ),
                            Row(
                              children: [
                                Text(
                                  "+1127.85 ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.green,
                                  ),
                                ),
                                Chip(
                                  label: Text(
                                    "+4.31%",
                                    style: TextStyle(fontSize: 12,color: Colors.green,),
                                  ),
                                  side: BorderSide(
                                    width: 0,
                                  ),
                                  backgroundColor: Color.fromARGB(255, 38, 68, 46),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 0,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 100),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(25, 32, 45, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
