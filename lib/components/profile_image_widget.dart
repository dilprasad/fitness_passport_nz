import 'package:FitnessPassport/utils/themes/colors.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final String? imagePath;

  const ProfileImage({super.key, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 60.0,
      decoration: const BoxDecoration(
          color: CustomColors.greyLight, shape: BoxShape.circle),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(80),
      ),
    );
  }
}
