import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../repository/auth_repository.dart';

class LoginViewModel extends ChangeNotifier {
  final _authRepo = AuthRepository();

  bool _loading = false;
  bool get loading => _loading;

  bool _signUpLoading = false;
  bool get signUpLoading => _signUpLoading;

  bool _isObscure = true;
  bool get isObscure => _isObscure;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  setSignUpLoading(bool value) {
    _signUpLoading = value;
    notifyListeners();
  }

  setObscure(bool obscure) {
    _isObscure = !_isObscure;
    notifyListeners();
  }

  // Future<void> loginApi(dynamic data , BuildContext context) async {
  //
  //   setLoading(true);
  //
  //   _myRepo.loginApi(data).then((value){
  //     setLoading(false);
  //     final userPreference = Provider.of<UserViewModel>(context , listen: false);
  //     userPreference.saveUser(
  //         User(
  //             // token: value['token'].toString()
  //         )
  //     );
  //
  //     // Utils.flushBarErrorMessage('Login Successfully', context);
  //     // Navigator.pushNamed(context, RoutesName.home);
  //     if(kDebugMode){
  //       print(value.toString());
  //
  //     }
  //   }).onError((error, stackTrace){
  //     setLoading(false);
  //     // Utils.flushBarErrorMessage(error.toString(), context);
  //     if(kDebugMode){
  //       print(error.toString());
  //     }
  //
  //   });
  // }
}
