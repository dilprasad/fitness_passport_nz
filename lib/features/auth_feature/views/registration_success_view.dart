import 'package:FitnessPassport/components/button_widget.dart';
import 'package:FitnessPassport/components/label_widget.dart';
import 'package:FitnessPassport/core/globals/constants.dart';
import 'package:FitnessPassport/utils/themes/colors.dart';
import 'package:FitnessPassport/utils/themes/text_styles.dart';
import 'package:flutter/material.dart';

class RegistrationSuccessView extends StatelessWidget {
  const RegistrationSuccessView({super.key});

  SizedBox sizeBox(double size) => SizedBox(height: size);

  Button getStartedButton() => Button(
        eButtonState: EButtonState.bActive,
        onPressed: () {},
        text: 'Get Started',
        textColor: CustomColors.blue01,
        btnColor: CustomColors.primaryWhite,
        borderColor: CustomColors.primaryWhite,
        eButtonType: EButtonType.bText,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bgBlue,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 30.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(
                  top: 60.0,
                ),
                child: Image.asset(
                  'assets/images/fp_logo_2x.png',
                  width: 300,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  bottom: 100.0,
                ),
                child: Column(
                  children: [
                    const Label(
                      text: 'Welcome, John',
                      fontStyle: tHeader2,
                      textColor: CustomColors.white01,
                    ),
                    sizeBox(10.0),
                    const Label(
                      text:
                          'You are ready to access all the\n facilities on your Fitness\n Passport membership!',
                      fontStyle: tSubTitle2,
                      textColor: CustomColors.white02,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              getStartedButton(),
            ],
          ),
        ),
      ),
    );
  }
}
