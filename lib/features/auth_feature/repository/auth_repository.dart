import 'package:FitnessPassport/core/globals/constants.dart';
import 'package:FitnessPassport/services/remote/network_api_services.dart';
import 'package:flutter/material.dart';

import '../../../services/remote/base_api_services.dart';

class AuthRepository {
  final BaseApiServices _apiServices = NetworkApiServices();
  // EUserStatus _loggedInStatus = EUserStatus.uNotLoggedIn;
  //
  // EUserStatus get loggedInStatus => _loggedInStatus;
  //
  // set loggedInStatus(EUserStatus value) {
  //   _loggedInStatus = value;
  // }

  //
  // notify() {
  //   notifyListeners();
  // }

  // Future<dynamic> loginApi(dynamic data) async {
  //   try {
  //     dynamic response =
  //         await _apiServices.getPostApiResponse(AppUrl.loginEndPint, data);
  //     return response;
  //   } catch (e) {
  //     throw e;
  //   }
  // }
}
