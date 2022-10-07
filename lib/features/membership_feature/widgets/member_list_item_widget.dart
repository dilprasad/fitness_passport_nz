import 'package:FitnessPassport/components/label_widget.dart';
import 'package:FitnessPassport/components/profile_image_widget.dart';
import 'package:FitnessPassport/components/right_button_widget.dart';
import 'package:FitnessPassport/utils/themes/colors.dart';
import 'package:FitnessPassport/utils/themes/text_styles.dart';
import 'package:flutter/material.dart';

class MemberListItem extends StatelessWidget {
  final String? memberName;
  final bool? isMemberPrimary;
  final Function? callBack;
  const MemberListItem(
      {super.key, this.memberName, this.isMemberPrimary, this.callBack});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => callBack!,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: isMemberPrimary!
              ? CustomColors.primaryBlue
              : CustomColors.white01,
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
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
                      text: memberName,
                      fontStyle: tHeader2,
                      textColor: isMemberPrimary!
                          ? CustomColors.white01
                          : CustomColors.greyDark,
                    ),
                    Label(
                      text: isMemberPrimary!
                          ? 'Primary Member'
                          : 'Secondary Member',
                      fontStyle: tSubTitle2,
                      textColor: isMemberPrimary!
                          ? CustomColors.white01
                          : CustomColors.greyDark,
                    ),
                  ],
                ),
              ],
            ),
            RightButtonWidget(
              btnColor: isMemberPrimary!
                  ? CustomColors.white01
                  : CustomColors.primaryBlue,
              iconColor: isMemberPrimary!
                  ? CustomColors.primaryBlue
                  : CustomColors.white01,
              callBack: null,
            )
          ],
        ),
      ),
    );
  }
}
