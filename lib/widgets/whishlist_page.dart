import 'package:flutter/material.dart';
import 'package:zerodha_kite_app/model/stock_details.dart';
import 'package:zerodha_kite_app/utils/show_snakbar.dart';
import 'package:zerodha_kite_app/widgets/custom_textfield.dart';
import 'package:zerodha_kite_app/widgets/stock_tile.dart';

class WishlistPage extends StatelessWidget {
  final VoidCallback onTap;
  final List<StockDetails> stocks;
  const WishlistPage({
    super.key,
    required this.onTap,
    required this.stocks,
    });

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
                    itemCount: stocks.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          StockTile(
                            stock: stocks[index],
                            onTap: onTap,
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
                  padding: const EdgeInsets.only(top: 20,right: 16,left: 16),
                  child: Column(
                    
                  )
                ),
              ],
            );
  }
}