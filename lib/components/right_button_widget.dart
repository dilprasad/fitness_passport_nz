import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class RightButtonWidget extends StatelessWidget {
  final Color? btnColor;
  final Color? iconColor;
  final Function? callBack;

  const RightButtonWidget({
    Key? key,
    this.btnColor,
    this.iconColor,
    this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 28.0,
        height: 32.0,
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        ),
        alignment: Alignment.center,
        child: Icon(
          IconlyLight.arrow_right_2,
          size: 16,
          color: iconColor,
        ),
      ),
      onTap: () => callBack!(),
    );
  }
}
