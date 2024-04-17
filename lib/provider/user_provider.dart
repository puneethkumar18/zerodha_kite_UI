// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:zerodha_kite_app/model/user.dart' as model;
import 'package:zerodha_kite_app/services/auth_methods.dart';
import 'package:zerodha_kite_app/utils/show_snakbar.dart';

class UserProvider extends ChangeNotifier {
  late model.User _user = model.User(
    uid: '',
    name: '',
    balance: 0,
    email: '',
    password: '',
    watchlist: [],
  );

  final FirebaseAuthMethods _authMethods = FirebaseAuthMethods();

  model.User get user => _user;

  void set(model.User user) {
    _user = user;
    notifyListeners();
  }

  Future<void> refreshUser({
    required BuildContext context,
  }) async {
    try {
      model.User user = await _authMethods.getUserDetails(context: context);
      _user = user;
      notifyListeners();
    } catch (e) {
      showSnackBar(
        message: e.toString(),
        context: context,
      );
    }
  }
}
