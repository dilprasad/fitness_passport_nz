import 'package:FitnessPassport/components/back_button_widget.dart';
import 'package:FitnessPassport/components/label_widget.dart';
import 'package:FitnessPassport/features/membership_feature/model/member_item.dart';
import 'package:FitnessPassport/features/membership_feature/widgets/member_list_item_widget.dart';
import 'package:FitnessPassport/utils/themes/colors.dart';
import 'package:FitnessPassport/utils/themes/text_styles.dart';
import 'package:flutter/material.dart';

class MembershipView extends StatefulWidget {
  final bool? hideStatus;
  const MembershipView({super.key, this.hideStatus});

  @override
  State<MembershipView> createState() => _MembershipViewState();
}

class _MembershipViewState extends State<MembershipView> {
  SizedBox sizeBox(double size) => SizedBox(height: size);

  List<MemberItem> members = [
    MemberItem(memberName: 'Jessica Smith', isPrimaryMember: false),
    MemberItem(memberName: 'Josh Smith', isPrimaryMember: false)
  ];

  Widget secondaryMemberList() => ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: members.length,
        itemBuilder: (context, index) {
          return MemberListItem(
            memberName: members[index].memberName,
            isMemberPrimary: members[index].isPrimaryMember,
            callBack: null,
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            color: CustomColors.greyDark,
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white01,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 40.0,
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  BackButtonWidget(
                    btnColor: CustomColors.greyLight,
                    iconColor: CustomColors.primaryBlack,
                    callBack: null,
                  ),
                  Label(
                    text: 'Membership',
                    fontStyle: tHeader2,
                    textColor: CustomColors.black01,
                  ),
                  SizedBox(
                    width: 32.0,
                    height: 32.0,
                  ),
                ],
              ),
              sizeBox(40.0),
              const MemberListItem(
                memberName: 'John Smith',
                isMemberPrimary: true,
              ),
              sizeBox(20.0),
              secondaryMemberList()
            ],
          ),
        ),
      ),
    );
  }
}
