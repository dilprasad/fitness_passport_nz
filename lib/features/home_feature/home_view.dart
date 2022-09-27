import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final bool? hideStatus;
  const HomeView({
    Key? key,
    this.hideStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Home here'),
      ),
    );
  }
}
