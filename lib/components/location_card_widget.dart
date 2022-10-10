import 'package:flutter/material.dart';
import '../utils/themes/colors.dart';
import '../utils/themes/text_styles.dart';
import 'label_widget.dart';

class LocationCard extends StatelessWidget {
  final String? centerName;
  final String? centerAddress;

  const LocationCard({super.key, this.centerName, this.centerAddress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      decoration: const BoxDecoration(
        color: CustomColors.primaryBlue,
        borderRadius: BorderRadius.all(Radius.circular(22.0)),
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        const SizedBox(
          height: 20.0,
        ),
        Label(
          text: centerName,
          fontStyle: tHeader2,
          textColor: CustomColors.white01,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Label(
          text: centerAddress,
          fontStyle: tSubTitle2,
          textColor: CustomColors.white01,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10.0,
        ),
      ]),
    );
  }
}
