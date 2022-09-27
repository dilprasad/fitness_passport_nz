import 'package:flutter/material.dart';

class MembershipView extends StatelessWidget {
  final bool? hideStatus;
  const MembershipView({
    Key? key,
    this.hideStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Membership here'),
      ),
    );
  }
}
