// import 'dart:async';

import 'package:FitnessPassport/components/label_widget.dart';
import 'package:flutter/material.dart';

import '../core/globals/constants.dart';
import '../utils/themes/colors.dart';
import '../utils/themes/text_styles.dart';

class ButtonWidget extends StatefulWidget {
  final String? text;
  final Color? btnColor;
  final Color? borderColor;
  final Color? textColor;
  final Function? onPressed;

  final EButtonState? eButtonState;
  final IconData? iconData;

  const ButtonWidget({
    Key? key,
    @required this.text,
    @required this.textColor,
    @required this.btnColor,
    @required this.borderColor,
    @required this.eButtonState,
    @required this.onPressed,
    this.iconData,
  }) : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: widget.eButtonState == EButtonState.bActive
            ? widget.btnColor!
            : CustomColors.greyLight,
        minimumSize: Size(
          w,
          60.0,
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: widget.eButtonState == EButtonState.bActive
                ? widget.borderColor!
                : CustomColors.greyLight,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(100.0),
        ),
        splashFactory: NoSplash.splashFactory,
      ),
      onPressed: () => widget.eButtonState == EButtonState.bActive
          ? widget.onPressed!()
          : null,
      child: widget.eButtonState == EButtonState.bLoading
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircularProgressIndicator(
                  color: CustomColors.greyLight,
                  backgroundColor: Colors.transparent,
                ),
              ],
            )
          : Label(
              text: widget.text,
              fontStyle: tLargeText,
              textColor: widget.eButtonState == EButtonState.bActive
                  ? widget.textColor!
                  : CustomColors.greyLight,
            ),
    );
  }
}
