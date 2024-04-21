// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:zerodha_kite_app/provider/custom_search_provider.dart';
import 'package:zerodha_kite_app/widgets/profile_tile.dart';

class SearchScreen extends StatefulWidget {
  static const String routeName = '/search-screen';
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _serachController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _serachController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CustomSearchProvider customSearchProvider({required bool renderUI}) =>
        Provider.of<CustomSearchProvider>(context, listen: renderUI);

    bool isSortedNull = customSearchProvider(renderUI: true).query == null;

    List<String> listSoredted = isSortedNull
        ? customSearchProvider(renderUI: true).recentSearch
        : customSearchProvider(renderUI: true).sorted;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: TextFormField(
                onChanged: (val) {
                  if (val.isNotEmpty) {
                    customSearchProvider(renderUI: false).setQuery(text: val);
                    customSearchProvider(renderUI: false).searchedQuery();
                  } else {
                    customSearchProvider(renderUI: false).clearQuered();
                  }
                },
                decoration: const InputDecoration(
                  hintText: "Search eg: infy bse,nifty fut",
                  prefixIcon: Icon(
                    Icons.arrow_back,
                    size: 34,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0, color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0, color: Colors.transparent),
                  ),
                ),
              ),
            ),
            const Divider(),
            const SizedBox(
              height: 5,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: listSoredted.length,
              itemBuilder: (context, index) {
                String stock = listSoredted[index];
                return GestureDetector(
                  onTap: () {
                    customSearchProvider(renderUI: false).recentSearched(stock);
                  },
                  child: ProfileTile(text: stock),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
