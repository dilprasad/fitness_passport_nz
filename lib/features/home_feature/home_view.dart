import 'package:FitnessPassport/components/profile_image_widget.dart';
import 'package:flutter/material.dart';

import '../../components/label_widget.dart';
import '../../utils/themes/colors.dart';
import '../../utils/themes/text_styles.dart';

class HomeView extends StatefulWidget {
  final bool? hideStatus;
  const HomeView({super.key, this.hideStatus});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  SizedBox sizeBox(double size) => SizedBox(height: size);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors.bgBlue,
        body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 50.0,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/fp_logo_2x.png',
                      width: 70.0,
                    ),
                    const ProfileImage(
                      size: 40,
                    )
                  ],
                ),
                sizeBox(30.0),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Label(
                          text: 'Welcome,',
                          fontStyle: tSubTitle2,
                          textColor: CustomColors.white01,
                        ),
                        sizeBox(10.0),
                        const Label(
                          text: 'John Smith',
                          fontStyle: tHeader1,
                          textColor: CustomColors.white02,
                        ),
                        sizeBox(10.0),
                        const Label(
                          text: 'Member ID: 2xxxxxx',
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
              ],
            )),
      ),
    );
  }
}
