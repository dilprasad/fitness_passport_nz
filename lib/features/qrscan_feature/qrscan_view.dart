import 'package:flutter/material.dart';

class QRScanView extends StatelessWidget {
  final bool? hideStatus;
  const QRScanView({
    Key? key,
    this.hideStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('QR Scan here'),
      ),
    );
  }
}
