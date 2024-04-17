import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  late String uid;
  late String name;
  late double balance;
  late String email;
  late String password;
  late List<String> watchlist;
  User({
    required this.uid,
    required this.name,
    required this.balance,
    required this.email,
    required this.password,
    required this.watchlist
  });

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
      uid: snapshot['uid'],
      name: snapshot['name'],
      balance: snapshot['balance'],
      email: snapshot['email'],
      password: snapshot['password'],
      watchlist : snapshot['watchlist']
    );
  }

  Map<String,dynamic> toJson() => {
    "uid":uid,
    "name":name,
    "balance":balance,
    "email":email,
    "password":password,
  };

  }

