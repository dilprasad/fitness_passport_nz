import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  final bool? hideStatus;
  const ProfileView({
    Key? key,
    this.hideStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Profile here'),
      ),
    );
  }
}
