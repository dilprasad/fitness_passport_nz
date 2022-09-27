import 'dart:async';

import 'package:FitnessPassport/core/globals/constants.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectionCheck {
  final StreamController<EInternetStatus> internetStatusController =
      StreamController<EInternetStatus>();

  ConnectionCheck() {
    Connectivity().onConnectivityChanged.listen((status) {
      internetStatusController.add(_checkConnectivityStatus(status));
    });
  }

  EInternetStatus _checkConnectivityStatus(ConnectivityResult status) {
    return status == ConnectivityResult.mobile ||
            status == ConnectivityResult.wifi
        ? EInternetStatus.iOnline
        : EInternetStatus.iOffline;
  }
}
