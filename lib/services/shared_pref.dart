// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zerodha_kite_app/utils/show_snakbar.dart';

class SharedPrferencesMethod{

  Future<bool?> createCache({
    required String key,
    required String value,
    required BuildContext context,
  })async{
    late bool prefState;
    try {
      SharedPreferences pref =  await SharedPreferences.getInstance();
      prefState = await pref.setString(key, value);
    } catch (e) {
      showSnackBar(message: e.toString(), context: context);
    }
     return prefState;
  }

  Future<String?> getCache({
    required String key,
    required BuildContext context,
  }) async {
    String? prefState;
    try {
      SharedPreferences pref = await SharedPreferences.getInstance();
      prefState = pref.getString(key);
    } catch (e) {
      showSnackBar(message: e.toString(), context: context);
    }
    return prefState;
  }

  Future clearCache({
    required String key,
    required BuildContext context,
  })async{
    try {
      SharedPreferences pref = await SharedPreferences.getInstance();
      pref.remove(key);
    } catch (e) {
      showSnackBar(message: e.toString(), context: context);
    }
  }

}