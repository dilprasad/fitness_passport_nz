import 'package:FitnessPassport/features/auth_feature/models/user.dart';
import 'package:FitnessPassport/utils/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../components/label_widget.dart';
import '../../../utils/themes/text_styles.dart';

class ResetOptionWidget extends StatefulWidget {
  // final String? optionTitle;
  // final String? optionSubTitle;
  // final IconData? optionIcon;
  // final Function? onTapped;

  const ResetOptionWidget({
    Key? key,
    // this.optionTitle,
    // this.optionSubTitle,
    // this.optionIcon,
    // this.onTapped,
  }) : super(key: key);

  @override
  State<ResetOptionWidget> createState() => _ResetOptionWidgetState();
}

class _ResetOptionWidgetState extends State<ResetOptionWidget> {
  int? selectedIndex = 2;
  final User userData = User(
    uName: 'userName',
    uId: 101,
    uEmail: 'userEmail',
    uPhone: '+9477001122345',
    uToken: 'tokenvaluegoeshere',
    uType: 'type',
  );

  @override
  Widget build(BuildContext context) {
    return
        // Container(
        // height: 200.0,
        // child:
        ListView.builder(
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
          ),
          child: ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                // widget.optionIcon,
                index == 0 ? IconlyLight.message : IconlyLight.wallet,

                /// icons have to be replaced here
                size: 24.0,
                color: index == selectedIndex
                    ? CustomColors.primaryWhite
                    : Colors.blue,
              ),
            ),
            title: Label(
              // text: widget.optionTitle,
              text: index == 0 ? 'via SMS' : 'via EMAIL',
              fontStyle: tMediumText2,
              textColor: index == selectedIndex
                  ? CustomColors.primaryWhite
                  : CustomColors.blue02,
            ),
            //Text('Item: $index'),
            subtitle: Label(
              // text: widget.optionSubTitle,
              text: index == 0 ? userData.uPhone : userData.uEmail,
              fontStyle: tMediumText2,
              textColor: index == selectedIndex
                  ? CustomColors.primaryWhite
                  : CustomColors.blue02,
            ),
            // Text('sub title here'),
            tileColor:
                // selectedIndex == index ? Colors.blue :
                CustomColors.greyBorder,
            textColor: CustomColors.bgBlue,
            selectedColor: CustomColors.primaryWhite,
            selectedTileColor: CustomColors.bgBlue,
            selected: index == selectedIndex ? true : false,
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              // widget.onTapped;
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                100.0,
              ),
            ),
          ),
        );
      },
      // ),
    );
  }
}
