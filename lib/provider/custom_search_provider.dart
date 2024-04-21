import 'package:flutter/material.dart';

class CustomSearchProvider extends ChangeNotifier {
  String? _query ;
  final List<String> sorted = [];
  final List<String> recentSearch = [];
  late List<String> stocksList = [
    "IDFC",
    "ASIANPAITS",
    "JIO",
    "IRFC",
    "RELIENCE",
    "GAIL",
    "HDFC"
  ];

  String? get query => _query;

  void setQuery({required String text}) {
    _query = text.toUpperCase();
    notifyListeners();
  }

  void searchedQuery() {
    sorted.clear();
    if (_query!.isNotEmpty) {
      for (String stock in stocksList) {
        if (!sorted.contains(stock.toUpperCase())) {
          if (stock.contains(_query!)) {
            sorted.add(stock);
            notifyListeners();
          }
        }
      }
    }
  }

  void recentSearched(String stock){
    debugPrint(stock);
    if(recentSearch.length < 3){
      if (!recentSearch.contains(stock)) {
        recentSearch.add(stock);
      }
    }else{
      recentSearch.removeLast();
      if (!recentSearch.contains(stock)) {
        recentSearch.add(stock);
      }
    }
    notifyListeners();
  }

  void clearQuered(){
    sorted.clear();
    _query = null;
    notifyListeners();
  }
}
