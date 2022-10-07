import 'package:FitnessPassport/components/profile_image_widget.dart';
import 'package:flutter/material.dart';

import '../../../components/label_widget.dart';
import '../../../utils/themes/colors.dart';
import '../../../utils/themes/decorations.dart';
import '../../../utils/themes/text_styles.dart';
import '../widgets/activities_timeline_widget.dart';

class HomeView extends StatefulWidget {
  final bool? hideStatus;

  const HomeView({super.key, this.hideStatus});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  SizedBox sizeBox(double size) => SizedBox(height: size);

  Widget headerSection() => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
      );

  Widget activitiesSection() => Container(
        decoration: decoWhiteBG(),
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Label(
                text: 'Previous Activities',
                fontStyle: tSubTitle2,
                textColor: CustomColors.primaryBlack,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: ActivitiesTimeLineWidget(
                  context: context,
                ),
              ),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors.bgBlue,
        body: Column(
          children: [
            headerSection(),
            Flexible(
              child: activitiesSection(),
            ),
          ],
        ),
      ),
    );
  }
}
