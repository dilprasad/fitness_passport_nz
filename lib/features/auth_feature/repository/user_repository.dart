import 'package:flutter/material.dart';

import '../models/user.dart';

class UserRepository extends ChangeNotifier {
  late User _user = User();

  User get user => _user;

  void setUser(User user) {
    _user = user;
    notifyListeners();
  }
}
