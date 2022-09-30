import 'package:FitnessPassport/components/app_bar_widget.dart';
import 'package:FitnessPassport/components/button_widget.dart';
import 'package:FitnessPassport/components/label_widget.dart';
import 'package:FitnessPassport/core/globals/constants.dart';
import 'package:FitnessPassport/utils/themes/colors.dart';
import 'package:FitnessPassport/utils/themes/decorations.dart';
import 'package:FitnessPassport/utils/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CreateNewPasswordView extends StatefulWidget {
  const CreateNewPasswordView({super.key});

  @override
  State<CreateNewPasswordView> createState() => _CreateNewPasswordViewState();
}

class _CreateNewPasswordViewState extends State<CreateNewPasswordView> {
  final ValueNotifier<bool> _obscurePassword = ValueNotifier<bool>(true);
  bool _isObscure = true;

  SizedBox sizeBox(double size) => SizedBox(height: size);

  TextField passwordInput() => TextField(
        obscureText: _isObscure,
        decoration:
            decoInput('Password', IconlyLight.lock, CustomColors.bgWhite)
                .copyWith(
          suffixIcon: IconButton(
            icon: Icon(
              _isObscure
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              color: CustomColors.greyMedium,
            ),
            onPressed: () => setState(
              () => _isObscure = !_isObscure,
            ),
          ),
        ),
      );

  ButtonWidget continueButton() => ButtonWidget(
        eButtonState: EButtonState.bActive,
        onPressed: () {},
        text: 'Continue',
        textColor: CustomColors.white01,
        btnColor: CustomColors.blue01,
        borderColor: CustomColors.primaryWhite,
        //eButtonType: EButtonType.bText,
      );

  ButtonWidget cancelButton() => ButtonWidget(
        eButtonState: EButtonState.bActive,
        onPressed: () {},
        text: 'Cancel',
        textColor: CustomColors.blue01,
        btnColor: CustomColors.greyLight,
        borderColor: CustomColors.primaryWhite,
        //eButtonType: EButtonType.bText,
      );

  Widget _backButton() {
    return Container(
      width: 32.0,
      height: 32.0,
      decoration: const BoxDecoration(
        color: CustomColors.primaryBlue,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: const Icon(Icons.arrow_back_ios,
          size: 12, color: CustomColors.white01),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white01,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 20.0,
          ),
          child: Column(
            children: <Widget>[
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     _backButton(),
              //     const Label(
              //       text: 'Create New Password',
              //       fontStyle: tHeader2,
              //       textColor: CustomColors.primaryBlue,
              //     ),
              //     const SizedBox(
              //       width: 32,
              //       height: 32,
              //     ),
              //   ],
              // ),
              const AppBarWidget(
                title: 'Create New Password',
                isLight: false,
                onBack: null,
              ),
              sizeBox(40.0),
              Image.asset(
                'assets/images/fp_logo_reverse_2x.png',
                // height: 200,
                width: 300,
              ),
              sizeBox(50.0),
              const Align(
                alignment: Alignment.topLeft,
                child: Label(
                  text: 'Create Your New Password',
                  fontStyle: tSubTitle2,
                  textColor: CustomColors.grey02,
                ),
              ),
              sizeBox(20.0),
              passwordInput(),
              sizeBox(30.0),
              const Align(
                alignment: Alignment.topLeft,
                child: Label(
                  text: 'Retype New Password',
                  fontStyle: tSubTitle2,
                  textColor: CustomColors.grey02,
                ),
              ),
              sizeBox(20.0),
              passwordInput(),
              sizeBox(40.0),
              continueButton(),
              sizeBox(10.0),
              cancelButton(),
            ],
          ),
        ),
      ),
    );
  }
}
