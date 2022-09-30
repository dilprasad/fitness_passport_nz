import 'package:flutter/material.dart';

import '../../../components/label_widget.dart';
import '../../../utils/themes/colors.dart';
import '../../../utils/themes/text_styles.dart';

class CountdownWidget extends AnimatedWidget {
  const CountdownWidget({
    Key? key,
    required this.animation,
    required this.reTimer,
  }) : super(key: key, listenable: animation);
  final Animation<int> animation;
  final Function reTimer;

  // _MyAppState rs = new _MyAppState();

  @override
  build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);

    String timerText =
        // '${clockTimer.inMinutes.remainder(60).toString()}:'
        (clockTimer.inSeconds.remainder(60) % 60).toString().padLeft(2, '0');

    return timerText == '00'
        ? InkWell(
            child: const Label(
              text: 'Resend',
              textColor: CustomColors.primaryBlack,
              fontStyle: tSubTitle2,
            ),
            onTap: () => reTimer(),
          )
        : Label(
            text: "Resend code in $timerText",
            textColor: CustomColors.primaryBlack,
            fontStyle: tSubTitle2,
          );
  }
}
