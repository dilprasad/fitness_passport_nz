import 'package:FitnessPassport/components/label_widget.dart';
import 'package:FitnessPassport/features/auth_feature/widgets/countdown_widget.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../components/app_bar_widget.dart';
import '../../../components/button_widget.dart';
import '../../../core/globals/constants.dart';
import '../../../utils/themes/colors.dart';
import '../../../utils/themes/text_styles.dart';

class ForgotPasswordCodeView extends StatefulWidget {
  const ForgotPasswordCodeView({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordCodeView> createState() => _ForgotPasswordCodeViewState();
}

class _ForgotPasswordCodeViewState extends State<ForgotPasswordCodeView>
    with SingleTickerProviderStateMixin {
  final controller = TextEditingController();
  final focusNode = FocusNode();
  late AnimationController _controller;
  late Animation<double> animation;
  var countdown;
  late int actual;

  @override
  void initState() {
    super.initState();
    animationStart();
  }

  void restartTimer() {
    setState(() {
      _controller.reset();
      _controller.forward();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  bool showError = false;

  final length = 4;
  static const borderColor =
      CustomColors.bgBlue; //Color.fromRGBO(114, 178, 238, 1);
  static const errorColor =
      CustomColors.bgBlue; //Color.fromRGBO(255, 234, 238, 1);
  static const fillColor = Color.fromRGBO(222, 231, 240, .57);
  static final defaultPinTheme = PinTheme(
    width: 56,
    height: 60,
    textStyle: tHeader2.copyWith(color: CustomColors.bgBlue),
    decoration: BoxDecoration(
      color: CustomColors.greyBorder,
      borderRadius: BorderRadius.circular(15.0),
      border: Border.all(color: Colors.transparent),
    ),
  );

  SizedBox sizeBox(double size) => SizedBox(height: size);

  Widget pinInput() => SizedBox(
        height: 68,
        child: Pinput(
          length: length,
          controller: controller,
          focusNode: focusNode,
          defaultPinTheme: defaultPinTheme,
          onCompleted: (pin) {
            setState(() => showError = pin != '5555');
          },
          focusedPinTheme: defaultPinTheme.copyWith(
            height: 68,
            width: 64,
            decoration: defaultPinTheme.decoration!.copyWith(
              border: Border.all(color: borderColor),
            ),
            textStyle: tHeader2.copyWith(color: CustomColors.bgBlue),
          ),
          errorPinTheme: defaultPinTheme.copyWith(
            decoration: BoxDecoration(
              color: errorColor,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      );

  ButtonWidget verifyButton() => ButtonWidget(
        eButtonState: EButtonState.bActive,
        onPressed: () {},
        // => Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => const ForgotPasswordCodeView(),
        //   ),
        // ),
        text: 'Verify',
        textColor: CustomColors.primaryWhite,
        btnColor: CustomColors.blue01,
        borderColor: CustomColors.blue01,
      );

  ButtonWidget cancelButton() => ButtonWidget(
        eButtonState: EButtonState.bActive,
        onPressed: () {},
        // => Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => const ForgotPasswordCodeView(),
        //   ),
        // ),
        text: 'Cancel',
        textColor: CustomColors.blue01,
        btnColor: CustomColors.greyLight.withOpacity(0.5),
        borderColor: CustomColors.greyLight.withOpacity(0.5),
      );

  void animationStart() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(minutes: 1));
    animation = Tween(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors.primaryWhite,
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 30.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AppBarWidget(
                title: 'Forgot Password',
                isLight: false,
                onBack: null,
              ),
              sizeBox(120.0),
              const Label(
                text: 'Enter the code sent to +94770011234',
                textColor: CustomColors.primaryBlack,
                fontStyle: tSubTitle2,
              ),
              sizeBox(60.0),
              pinInput(),
              sizeBox(60.0),
              // const Label(
              //   text: 'Resend the code in 55 seconds',
              //   textColor: CustomColors.primaryBlack,
              //   fontStyle: tSubTitle2,
              // ),
              // sizeBox(30.0),
              CountdownWidget(
                reTimer: restartTimer, // send the function
                animation: StepTween(
                  begin: 1 * 60,
                  end: 0,
                ).animate(_controller),
              ),
              sizeBox(120.0),
              verifyButton(),
              sizeBox(12.0),
              cancelButton(),
            ],
          ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[],
          // ),
        ),
      ),
    );
  }
}
