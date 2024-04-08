import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:zerodha_kite_app/model/stock_details.dart';

class User {
  late String uid;
  late String name;
  late double balance;
  late String email;
  late String password;
  late List<List<StockDetails>> wathclist;
  User({
    required this.uid,
    required this.name,
    required this.balance,
    required this.email,
    required this.password,
    required this.wathclist
  });

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
      uid: snapshot['uid'],
      name: snapshot['name'],
      balance: snapshot['balance'],
      email: snapshot['email'],
      password: snapshot['password'],
      wathclist: snapshot['wathchlist']
    );
  }

  Map<String,dynamic> toJson() => {
    "uid":uid,
    "name":name,
    "balance":balance,
    "email":email,
    "password":password,
    "watchlist":wathclist
  };

  }

