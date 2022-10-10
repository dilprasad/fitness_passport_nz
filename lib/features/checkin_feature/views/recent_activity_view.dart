import 'package:FitnessPassport/components/label_widget.dart';
import 'package:FitnessPassport/components/location_card_widget.dart';
import 'package:FitnessPassport/features/checkin_feature/widgets/member_list_item_widget.dart';
import 'package:FitnessPassport/utils/themes/colors.dart';
import 'package:flutter/material.dart';
import '../../../components/button_widget.dart';
import '../../../core/globals/constants.dart';
import '../../../utils/themes/text_styles.dart';
import '../model/member_item.dart';

class RecentActivity extends StatefulWidget {
  const RecentActivity({super.key});

  @override
  State<RecentActivity> createState() => _RecentActivityState();
}

List<MemberItem> members = [
  MemberItem(
      memberName: 'John Smith',
      memberNo: "ABC1",
      checkInTime: "25 April, 2022 | 8:00 PM"),
  MemberItem(
      memberName: 'Jess Smith',
      memberNo: "ABC2",
      checkInTime: "25 April, 2022 | 8:00 PM"),
  MemberItem(
      memberName: 'Jerry Smith',
      memberNo: "ABC3",
      checkInTime: "25 April, 2022 | 8:00 PM")
];

Widget checkedInMemberList() => ListView.separated(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: members.length,
      itemBuilder: (context, index) {
        return MemberListItemCheckIn(
          memberName: members[index].memberName,
          memberNo: members[index].memberNo,
          checkInTime: members[index].checkInTime,
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(
          color: CustomColors.bgWhite,
        );
      },
    );

ButtonWidget okayButton() => ButtonWidget(
      eButtonState: EButtonState.bActive,
      onPressed: () {},
      text: 'Okay',
      textColor: CustomColors.primaryWhite,
      btnColor: CustomColors.primaryBlue,
      borderColor: CustomColors.primaryWhite,
    );

class _RecentActivityState extends State<RecentActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bgWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 20.0,
          ),
          child: Column(
            children: [
              const Label(
                text: "9/5/22 | 9.05 AM",
                fontStyle: tHeader2,
                textColor: CustomColors.blue01,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const LocationCard(
                centerName: "Anytime Fitness",
                centerAddress:
                    "108 Bisson Place,Te\n Awa, Napier, New\n Zealand",
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Label(
                  text: "Checked In Members",
                  fontStyle: tHeader2,
                  textColor: CustomColors.black01,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              checkedInMemberList(),
              const SizedBox(
                height: 30.0,
              ),
              okayButton()
            ],
          ),
        ),
      ),
    );
  }
}
