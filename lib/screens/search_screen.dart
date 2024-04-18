// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zerodha_kite_app/provider/custom_search_provider.dart';
import 'package:zerodha_kite_app/widgets/profile_tile.dart';

class SearchScreen extends StatefulWidget {
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                onChanged: (val) {
                  if (val.isNotEmpty) {
                    customSearchProvider(renderUI: false).setQuery(text: val);
                    customSearchProvider(renderUI: false).searchedQuery();
                  } else {
                    customSearchProvider(renderUI: false).clearQuered();
                  }
                },
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  label: const Text(
                    "Search ...",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blueGrey,
                    ),
                  ),
                  suffixIcon: const Icon(
                    Icons.search,
                    size: 32,
                    color: Color.fromARGB(255, 133, 154, 164),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.blueGrey,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.blueGrey,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: listSoredted.length,
                itemBuilder: (context, index) {
                  String stock = listSoredted[index];
                  return GestureDetector(
                    onTap: (){
                      customSearchProvider(renderUI: false).recentSearched(stock);
                    },
                    child: ProfileTile(text: stock),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
