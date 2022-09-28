// import 'dart:async';

import 'package:FitnessPassport/components/label_widget.dart';
import 'package:flutter/material.dart';

import '../core/globals/constants.dart';
import '../utils/themes/colors.dart';
import '../utils/themes/text_styles.dart';

class Button extends StatefulWidget {
  //
  final String? text;
  final Color? btnColor;
  final Color? borderColor;
  final Color? textColor;
  final Function? onPressed;
  final EButtonType? eButtonType;
  final EButtonState? eButtonState;
  final IconData? iconData;

  const Button({
    Key? key,
    @required this.text,
    @required this.textColor,
    @required this.btnColor,
    @required this.borderColor,
    @required this.eButtonType,
    @required this.eButtonState,
    @required this.onPressed,
    this.iconData,
  }) : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> with SingleTickerProviderStateMixin {
  late double _scale;
  // late AnimationController _controller;

  @override
  void initState() {
    // _controller = AnimationController(
    //   vsync: this,
    //   duration: const Duration(
    //     milliseconds: 100,
    //   ),
    //   upperBound: 0.1,
    // )..addListener(() {
    //     setState(() {});
    //   });
    super.initState();
  }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  // void buttonHandler() {
  //   _controller.forward();
  //   Timer(const Duration(milliseconds: 50), () {
  //     _controller.reverse();
  //   });
  //   Timer(const Duration(milliseconds: 50), () {
  //     widget.onPressed!();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    // _scale = 1 - _controller.value;
    return
        // Transform.scale(
        // scale: _scale,
        // child:
        TextButton(
      style: TextButton.styleFrom(
        // foregroundColor: widget.eButtonState == EButtonState.bActive
        //     ? widget.btnColor!
        //     : CustomColors.greyLight,
        // elevation: widget.eButtonState == EButtonState.bActive ? 2.0 : 0.0,
        backgroundColor: widget.eButtonState == EButtonState.bActive
            ? widget.btnColor!
            : CustomColors.greyLight,
        minimumSize: Size(
          w,
          60.0,
        ), //const Size(80.0, 50.0),
        // maximumSize: const Size(104, 60.0),
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
          //buttonHandler()
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
          : (widget.eButtonType == EButtonType.bText
              ? Label(
                  text: widget.text,
                  fontStyle: tLargeText,
                  textColor: widget.eButtonState == EButtonState.bActive
                      ? widget.textColor!
                      : CustomColors.greyLight,
                )
              // Text(
              //             widget.text!,
              //             style: tButtonMedium.copyWith(
              //               color: widget.eButtonState == EButtonState.bActive
              //                   ? widget.textColor!
              //                   : CustomColors.greyLight,
              //             ),
              //             textAlign: TextAlign.center,
              //             textScaleFactor: 1.0,
              //           )
              : (widget.eButtonType == EButtonType.bIconText)
                  ? Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          widget.iconData,
                          color: widget.eButtonState == EButtonState.bActive
                              ? widget.textColor
                              : CustomColors.greyLight,
                        ),
                        const Spacer(),
                        Label(
                          text: widget.text!,
                          fontStyle: tButtonMedium,
                          textColor: widget.eButtonState == EButtonState.bActive
                              ? widget.textColor!
                              : CustomColors.greyLight,
                        ),
                        // Text(
                        //   widget.text!,
                        //   style: tButtonMedium.copyWith(
                        //     color: widget.eButtonState == EButtonState.bActive
                        //         ? widget.textColor!
                        //         : CustomColors.greyLight,
                        //   ),
                        //   textAlign: TextAlign.center,
                        //   textScaleFactor: 1.0,
                        // ),
                        const Spacer(),
                      ],
                    )
                  : Icon(
                      widget.iconData,
                      color: widget.eButtonState == EButtonState.bActive
                          ? CustomColors.primaryWhite
                          : CustomColors.greyLight,
                    )),
      // ),
    );
  }
}
