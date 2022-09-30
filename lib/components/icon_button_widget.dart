import 'dart:async';
import 'package:FitnessPassport/components/label_widget.dart';
import 'package:FitnessPassport/core/globals/constants.dart';
import 'package:flutter/material.dart';

import '../utils/themes/colors.dart';
import '../utils/themes/text_styles.dart';

class IconTextButton extends StatefulWidget {
  //
  final String? text;
  final Color? btnColor;
  final Color? borderColor;
  final Color? textColor;
  final Function? onPressed;

  final EButtonType? eButtonType;
  final EButtonState? eButtonState;
  final IconData? iconData;

  const IconTextButton({
    Key? key,
    this.text,
    this.btnColor,
    this.borderColor,
    this.textColor,
    this.eButtonType,
    this.iconData,
    @required this.eButtonState,
    @required this.onPressed,
  }) : super(key: key);

  @override
  _IconTextButtonState createState() => _IconTextButtonState();
}

class _IconTextButtonState extends State<IconTextButton>
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
      child: TextButton(
        style: TextButton.styleFrom(
          elevation: widget.eButtonState == EButtonState.bActive ? 2.0 : 0.0,
          backgroundColor: widget.eButtonState == EButtonState.bActive
              ? widget.btnColor!
              : CustomColors.secondaryLight,
          minimumSize: const Size(80.0, 50.0),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: widget.eButtonState == EButtonState.bActive
                  ? widget.borderColor!
                  : CustomColors.secondaryLight,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          splashFactory: NoSplash.splashFactory,
        ),
        onPressed: () => widget.eButtonState == EButtonState.bActive
            ? buttonHandler()
            : null,
        child: widget.eButtonState == EButtonState.bLoading
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(
                    color: CustomColors.secondaryLight,
                    backgroundColor: Colors.transparent,
                  ),
                ],
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    widget.iconData,
                    color: widget.eButtonState == EButtonState.bActive
                        ? widget.textColor
                        : CustomColors.secondaryLight,
                  ),
                  const Spacer(),
                  Label(
                    text: widget.text!,
                    fontStyle: tLargeText,
                    textColor: widget.eButtonState == EButtonState.bActive
                        ? widget.textColor!
                        : CustomColors.secondaryLight,
                  ),
                  const Spacer(),
                ],
              ),
      ),
    );
  }
}
