import 'package:FitnessPassport/core/globals/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConnectionAwareWidget extends StatelessWidget {
  final Widget onlineChild;
  final Widget offlineChild;

  const ConnectionAwareWidget({
    Key? key,
    required this.onlineChild,
    required this.offlineChild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<EInternetStatus>(builder: (context, data, child) {
      return data == EInternetStatus.iOnline ? onlineChild : offlineChild;
    });
  }
}
