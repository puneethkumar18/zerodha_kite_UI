import 'package:flutter/material.dart';
import 'package:zerodha_kite_app/model/stock_details.dart';

class CustomSearchProvider extends ChangeNotifier {
  late String _query;
  late List<StockDetails> sorted;
  late List<StockDetails> stocksList;

  void setQuery({required String text}) {
    _query = text;
    notifyListeners();

    debugPrint(_query);
  }

  void searchedQuery() {
    if (_query.isNotEmpty) {
      for (StockDetails stock in stocksList) {
        if (!sorted.contains(stock)) {
          if (stock.name.contains(_query)) {
            sorted.add(stock);
            notifyListeners();
          }
        }
      }
    }
  }
}
