import 'package:FitnessPassport/components/label_widget.dart';
import 'package:FitnessPassport/components/profile_image_widget.dart';
import 'package:FitnessPassport/utils/themes/colors.dart';
import 'package:FitnessPassport/utils/themes/text_styles.dart';
import 'package:flutter/material.dart';

class MemberListItemCheckIn extends StatelessWidget {
  final String? memberName;
  final String? memberNo;
  final String? checkInTime;
  const MemberListItemCheckIn(
      {super.key, this.memberName, this.memberNo, this.checkInTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      decoration: const BoxDecoration(
        color: CustomColors.white01,
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const ProfileImage(),
              const SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Label(
                    text: "Name: ${memberName!}",
                    fontStyle: tSubTitle3,
                    textColor: CustomColors.black01,
                  ),
                  Label(
                    text: "Membership Number: ${memberNo!}",
                    fontStyle: tSubTitle3,
                    textColor: CustomColors.black01,
                  ),
                  Label(
                    text: checkInTime,
                    fontStyle: tSubTitle3,
                    textColor: CustomColors.black01,
                  ),
                ],
              ),
            ],
          ),
          Image.asset(
            'assets/icons/tick_green.png',
          ),
        ],
      ),
    );
  }
}
