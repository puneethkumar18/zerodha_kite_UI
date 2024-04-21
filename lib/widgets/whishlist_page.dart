import 'package:flutter/material.dart';
import 'package:zerodha_kite_app/model/stock_details.dart';
import 'package:zerodha_kite_app/screens/search_screen.dart';
import 'package:zerodha_kite_app/widgets/stock_tile.dart';

class WishlistPage extends StatefulWidget {
  final VoidCallback onTap;
  final List<StockDetails> stocks;
  const WishlistPage({
    super.key,
    required this.onTap,
    required this.stocks,
  });

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {


  moveToSearch(){
    Navigator.pushNamed(context, SearchScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          margin: const EdgeInsets.only(top: 40),
          padding: const EdgeInsets.only(top: 60),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(24, 32, 41, 1),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: ListView.builder(
            itemCount: widget.stocks.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  StockTile(
                    stock: widget.stocks[index],
                    onTap: widget.onTap,
                  ),
                  const Divider(
                    height: 8,
                  )
                ],
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 16, left: 16),
          child: GestureDetector(
            onTap: moveToSearch,
            child: Container(
              width: MediaQuery.sizeOf(context).width / 0.2,
              height: 60,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 42, 57, 63),
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.search,
                    size: 30,
                    color: Color.fromARGB(255, 103, 135, 148),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Search & add",
                    style: TextStyle(
                        color: Color.fromARGB(255, 103, 135, 148),
                        fontSize: 16),
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  Text(
                    "5/50",
                    style: TextStyle(
                      color: Color.fromARGB(255, 103, 135, 148),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  VerticalDivider(
                    width: 1,
                    indent: 18,
                    endIndent: 18,
                    color: Color.fromARGB(255, 103, 135, 148),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.display_settings_rounded,color: Color.fromARGB(255, 103, 135, 148),)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
