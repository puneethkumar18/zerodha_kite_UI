// ignore_for_file: use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:zerodha_kite_app/model/stock_details.dart';
import 'package:zerodha_kite_app/model/user.dart' as model;
import 'package:zerodha_kite_app/utils/show_snakbar.dart';

class FirestoreMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  FirebaseFirestore get firestore => _firestore;

  Future<void> saveUserData({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      model.User user = model.User(
        uid: '',
        name: '',
        balance: 0,
        email: email,
        password: password,
      );
      await FirestoreMethods()
          .firestore
          .collection('users')
          .doc(user.uid)
          .set(user.toJson());
    } catch (e) {
      showSnackBar(
        message: e.toString(),
        context: context,
      );
    }
  }

  Future<void> saveWatchlist({
    required String sid,
    required String symbol,
    required String watchlist,
    required BuildContext context,
  }) async {
    try {
      StockDetails stockdetail;
      if (symbol.isNotEmpty) {
        stockdetail = StockDetails(
          sid: sid,
          name: symbol,
          price: 0,
          category: '',
        );
        await _firestore
            .collection("watchlists")
            .doc(watchlist)
            .collection('stocks')
            .doc(sid)
            .set(stockdetail.toJson());
      } else {
        showSnackBar(
          message: "Please give the proper Stock Name",
          context: context,
        );
      }
    } catch (e) {
      showSnackBar(
        message: e.toString(),
        context: context,
      );
    }
  }
}
