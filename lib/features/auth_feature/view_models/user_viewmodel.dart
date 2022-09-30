import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/user.dart';

class UserViewModel with ChangeNotifier {
  Future<bool> saveUser(User user) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    // sp.setString('token', user.token.toString());
    notifyListeners();
    return true;
  }

  // Future<User> getUser() async {
  //   final SharedPreferences sp = await SharedPreferences.getInstance();
  //   final String? token = sp.getString('token');
  //
  //   return User(token: token.toString());
  // }
  //
  // Future<bool> removeUser() async {
  //   final SharedPreferences sp = await SharedPreferences.getInstance();
  //   sp.remove('token');
  //   return true;
  // }
}
