import 'package:flutter/material.dart';

import '../../../components/label_widget.dart';
import '../../../utils/themes/colors.dart';
import '../../../utils/themes/text_styles.dart';

Widget profileItem(String text, IconData iconData) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: [
            Icon(
              iconData,
              color: CustomColors.bgWhite,
            ),
            const SizedBox(width: 20),
            Label(
              text: text,
              fontStyle: tSubTitle2,
              textColor: CustomColors.white01,
            ),
          ],
        ),
        const Icon(
          Icons.arrow_forward_ios,
          size: 12,
          color: CustomColors.bgWhite,
        )
      ],
    ),
  );
}
