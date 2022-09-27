import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../../core/bottom_bar/bottom_bar_view.dart';

class CheckInView extends StatelessWidget {
  final bool? hideStatus;
  const CheckInView({
    Key? key,
    this.hideStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('CheckIn here'),
      ),
    );
  }
}
