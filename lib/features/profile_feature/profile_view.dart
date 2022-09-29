import 'package:FitnessPassport/components/label_widget.dart';
import 'package:FitnessPassport/utils/themes/colors.dart';
import 'package:FitnessPassport/utils/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key, required bool hideStatus});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  Widget _profileItem(String text, IconData iconData) {
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

  Widget _backButton() {
    return Container(
      width: 32.0,
      height: 32.0,
      decoration: const BoxDecoration(
        color: CustomColors.bgWhite,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: const Icon(Icons.arrow_back_ios,
          size: 12, color: CustomColors.primaryBlack),
    );
  }

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
    return Scaffold(
      backgroundColor: CustomColors.bgBlue,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 40.0,
            vertical: 40.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _backButton(),
                  const Label(
                    text: 'Profile',
                    fontStyle: tHeader2,
                    textColor: CustomColors.white02,
                  ),
                  const SizedBox(
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
                    _profileItem("My Details", IconlyLight.profile),
                    _profileItem("Membership", IconlyLight.wallet),
                    _profileItem("Facilities", IconlyLight.location),
                    _profileItem("Check-in", IconlyLight.scan),
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
                    _profileItem("Settings", IconlyLight.setting),
                    _profileItem("Privacy Policy", IconlyLight.shield_done),
                    _profileItem("Terms and Conditions", IconlyLight.lock),
                    _profileItem("Contact us", IconlyLight.message),
                    _profileItem("Logout", IconlyLight.logout),
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
