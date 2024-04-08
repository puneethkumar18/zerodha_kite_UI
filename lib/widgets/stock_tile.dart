import 'package:flutter/material.dart';
import 'package:zerodha_kite_app/model/stock_details.dart';

class StockTile extends StatelessWidget {
  final StockDetails stock;
  final VoidCallback onTap;
  const StockTile({Key? key, required this.stock, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            stock.price.toString(),
            style: const TextStyle(
              color: Colors.green,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 5,),
          const Text(
            "+5.70(+0.72%)",
            style: TextStyle(
              color: Colors.white54,
            ),
          )
        ],
      ),
      leading: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            stock.name,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            stock.category,
            style: const TextStyle(
              color: Colors.white54,
            ),
          ),
        ],
      ),
    );
  }
}
