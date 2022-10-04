import 'package:FitnessPassport/components/back_button_widget.dart';
import 'package:flutter/material.dart';

import '../utils/themes/colors.dart';
import '../utils/themes/text_styles.dart';
import 'label_widget.dart';

class AppBarWidget extends StatelessWidget {
  final String? title;
  final Function? onBack;
  final bool isLight;
  // final BackButtonWidget? backButton;
  const AppBarWidget({
    Key? key,
    this.title,
    this.onBack,
    this.isLight = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // Expanded(
        //   child: BackButtonWidget(
        //     btnColor: isLight ? CustomColors.bgWhite : CustomColors.bgBlue,
        //     iconColor: isLight ? CustomColors.bgBlue : CustomColors.bgWhite,
        //     callBack: onBack,
        //   ),
        // ),
        // const Spacer(),
        // Label(
        //   text: title == null ? '' : title!,
        //   fontStyle: tHeader2,
        //   textColor: CustomColors.blue01,
        // ),
        // const Spacer(flex: 2),
        BackButtonWidget(
          btnColor: isLight ? CustomColors.bgWhite : CustomColors.bgBlue,
          iconColor: isLight ? CustomColors.bgBlue : CustomColors.bgWhite,
          callBack: onBack,
        ),
        Label(
          text: title == null ? '' : title!,
          fontStyle: tHeader2,
          textColor: CustomColors.blue01,
        ),
        const SizedBox(
          width: 32.0,
          height: 32.0,
        )
      ],
    );
  }
}
