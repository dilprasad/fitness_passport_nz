import 'package:FitnessPassport/features/login_feature/models/user.dart';
import 'package:flutter/material.dart';

class UserRepository extends ChangeNotifier {
  late User _user = User();

  User get user => _user;

  void setUser(User user) {
    _user = user;
    notifyListeners();
  }
}
