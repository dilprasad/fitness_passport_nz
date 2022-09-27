import 'dart:async';

import 'package:flutter/material.dart';

import '../core/globals/constants.dart';
import '../utils/themes/colors.dart';
import '../utils/themes/text_styles.dart';

class ButtonWidget extends StatefulWidget {
  //
  final String? text;
  final Color? btnColor;
  final Color? borderColor;
  final Color? textColor;
  final Function? onPressed;
  final EButtonType;
  final EButtonState;
  final IconData? iconData;

  const ButtonWidget({
    Key? key,
    this.text,
    this.btnColor,
    this.borderColor,
    this.textColor,
    this.EButtonType,
    this.iconData,
    @required this.EButtonState,
    @required this.onPressed,
  }) : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget>
    with SingleTickerProviderStateMixin {
  late double _scale;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 100,
      ),
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void buttonHandler() {
    _controller.forward();
    Timer(const Duration(milliseconds: 50), () {
      _controller.reverse();
    });
    Timer(const Duration(milliseconds: 50), () {
      widget.onPressed!();
    });
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    return Transform.scale(
      scale: _scale,
      child: ElevatedButton(
        style: TextButton.styleFrom(
          elevation: widget.EButtonState == EButtonState.bActive ? 2.0 : 0.0,
          primary: widget.EButtonState == EButtonState.bActive
              ? widget.btnColor!
              : CustomColors.greyLight,
          backgroundColor: widget.EButtonState == EButtonState.bActive
              ? widget.btnColor!
              : CustomColors.greyLight,
          minimumSize: const Size(80.0, 50.0),
          maximumSize: const Size(104, 50.0),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: widget.EButtonState == EButtonState.bActive
                  ? widget.borderColor!
                  : CustomColors.greyLight,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          splashFactory: NoSplash.splashFactory,
        ),
        onPressed: () => widget.EButtonState == EButtonState.bActive
            ? buttonHandler()
            : null,
        child: widget.EButtonState == EButtonState.bLoading
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(
                    color: CustomColors.greyLight,
                    backgroundColor: Colors.transparent,
                  ),
                ],
              )
            : (widget.EButtonType == EButtonType.bText
                ? Text(
                    widget.text!,
                    style: tButtonMedium.copyWith(
                      color: widget.EButtonState == EButtonState.bActive
                          ? widget.textColor!
                          : CustomColors.greyLight,
                    ),
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.0,
                  )
                : (widget.EButtonType == EButtonType.bIconText)
                    ? Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            widget.iconData,
                            color: widget.EButtonState == EButtonState.bActive
                                ? widget.textColor
                                : CustomColors.greyLight,
                          ),
                          const Spacer(),
                          Text(
                            widget.text!,
                            style: tButtonMedium.copyWith(
                              color: widget.EButtonState == EButtonState.bActive
                                  ? widget.textColor!
                                  : CustomColors.greyLight,
                            ),
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.0,
                          ),
                          Spacer(),
                        ],
                      )
                    : Icon(
                        widget.iconData,
                        color: widget.EButtonState == EButtonState.bActive
                            ? CustomColors.primaryWhite
                            : CustomColors.greyLight,
                      )),
      ),
    );
  }
}
