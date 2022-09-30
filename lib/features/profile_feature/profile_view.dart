import 'package:FitnessPassport/components/label_widget.dart';
import 'package:FitnessPassport/utils/themes/colors.dart';
import 'package:FitnessPassport/utils/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import '../../components/back_button_widget.dart';
import 'widgets/profile_item_widget.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key, required bool hideStatus});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  Widget _profilePic() {
    return Container(
        height: 60.0,
        width: 60.0,
        decoration: const BoxDecoration(
            color: CustomColors.bgWhite, shape: BoxShape.circle),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(80),
          // child: Image.asset(
          //   "assets/images/fp_logo_2x.png",
          //   fit: BoxFit.cover,
          // ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors.bgBlue,
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 40.0,
            vertical: 40.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  BackButtonWidget(
                    btnColor: CustomColors.bgWhite,
                    iconColor: CustomColors.primaryBlack,
                    callBack: null,
                  ),
                  Label(
                    text: 'Profile',
                    fontStyle: tHeader2,
                    textColor: CustomColors.white02,
                  ),
                  SizedBox(
                    width: 32,
                    height: 32,
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  _profilePic(),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Label(
                        text: 'John Smith',
                        fontStyle: tHeader2,
                        textColor: CustomColors.white02,
                      ),
                      Label(
                        text: 'john@gmail.com',
                        fontStyle: tSubTitle2,
                        textColor: CustomColors.white01,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Label(
                      text: 'Account',
                      fontStyle: tHeader3,
                      textColor: CustomColors.white02,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    profileItem("My Details", IconlyLight.profile),
                    profileItem("Membership", IconlyLight.wallet),
                    profileItem("Facilities", IconlyLight.location),
                    profileItem("Check-in", IconlyLight.scan),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Label(
                      text: 'Other',
                      fontStyle: tHeader3,
                      textColor: CustomColors.white02,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    profileItem("Settings", IconlyLight.setting),
                    profileItem("Privacy Policy", IconlyLight.shield_done),
                    profileItem("Terms and Conditions", IconlyLight.lock),
                    profileItem("Contact us", IconlyLight.message),
                    profileItem("Logout", IconlyLight.logout),
                  ],
                ),
              ),
              const SizedBox(
                height: 60.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
