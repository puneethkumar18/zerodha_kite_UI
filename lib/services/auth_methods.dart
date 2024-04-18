// ignore_for_file: use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zerodha_kite_app/model/user.dart' as model;
import 'package:zerodha_kite_app/provider/user_provider.dart';
import 'package:zerodha_kite_app/services/firestore_methods.dart';
import 'package:zerodha_kite_app/utils/show_snakbar.dart';

class FirebaseAuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User get user => _auth.currentUser!;

  Future<model.User> getUserDetails({required BuildContext context}) async {
    late model.User user;
    try {
      final currentUser = _auth.currentUser!;

      DocumentSnapshot snap = await FirestoreMethods()
          .firestore
          .collection("users")
          .doc(currentUser.uid)
          .get();
      user = model.User.fromSnap(snap);
    } catch (e) {
      showSnackBar(message: e.toString(), context: context);
    }
    return user;
  }

  Future<void> signUpUser({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
   
    try {
        await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
      
    } on FirebaseAuthException catch (e) {
      showSnackBar(message: e.toString(), context: context);
    } catch (e) {
      showSnackBar(message: e.toString(), context: context);
    }
  }

  Future<void> signInUser({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      model.User user = model.User(
        uid: '',
        name: '',
        balance: 0,
        email: email,
        password: password,
        watchlist: [],
      );
      Provider.of<UserProvider>(context).set(user);
      showSnackBar(message: "Account has created !..", context: context);

    }on FirebaseAuthException catch (e) {
      showSnackBar(
        message: e.toString(),
        context: context,
      );
    } catch(e){
      showSnackBar(
        message: e.toString(),
        context: context,
      );
    }
  }
}
