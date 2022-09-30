import 'package:FitnessPassport/features/auth_feature/views/forgot_password_code_view.dart';
import 'package:FitnessPassport/features/auth_feature/widgets/reset_option_widget.dart';
import 'package:flutter/material.dart';

import '../../../components/app_bar_widget.dart';
import '../../../components/back_button_widget.dart';
import '../../../components/button_widget.dart';
import '../../../components/label_widget.dart';
import '../../../core/globals/constants.dart';
import '../../../utils/themes/colors.dart';
import '../../../utils/themes/text_styles.dart';

class ForgotPasswordMainView extends StatelessWidget {
  const ForgotPasswordMainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizedBox sizeBox(double size) => SizedBox(height: size);

    ButtonWidget resetButton() => ButtonWidget(
          eButtonState: EButtonState.bActive,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ForgotPasswordCodeView(),
            ),
          ),
          text: 'Get Started',
          textColor: CustomColors.primaryWhite,
          btnColor: CustomColors.blue01,
          borderColor: CustomColors.blue01,
        );

    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors.primaryWhite,
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 30.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: const [
              //     BackButtonWidget(
              //       btnColor: CustomColors.bgBlue,
              //       iconColor: CustomColors.bgWhite,
              //       callBack: null,
              //     ),
              //     Label(
              //       text: 'Forgot Password',
              //       fontStyle: tHeader2,
              //       textColor: CustomColors.blue01,
              //     ),
              //     // SizedBox(
              //     //   width: 32,
              //     //   height: 32,
              //     // ),
              //   ],
              // ),
              const AppBarWidget(
                title: 'Forgot Password',
                isLight: false,
                onBack: null,
              ),
              sizeBox(30.0),
              Image.asset(
                'assets/images/fp_logo_reverse_2x.png',
                // height: 200,
                width: 240,
              ),
              sizeBox(40.0),
              const Label(
                text:
                    'Select which contact details should we\nuse to reset your password',
                fontStyle: tSubTitle2,
                textColor: CustomColors.greyDark,
              ),
              sizeBox(40.0),
              const ResetOptionWidget(),
              // sizeBox(20.0),
              sizeBox(60.0),
              resetButton(),
            ],
          ),
        ),
      ),
    );
  }
}
