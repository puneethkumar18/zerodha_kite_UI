import 'package:flutter/material.dart';

class StockTile extends StatelessWidget {
  final BuildContext context;
  const StockTile({super.key, required this.context});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Reliance",
            style: TextStyle(fontSize: 16),
          ),
          Text('NSE',style: TextStyle(),)
        ],
      ),
    );
  }
}
