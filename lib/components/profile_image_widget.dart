import 'package:FitnessPassport/utils/themes/colors.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final String? imagePath;
  final double? size;
  const ProfileImage({super.key, this.imagePath, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size,
        width: size,
        decoration: const BoxDecoration(
            color: CustomColors.greyLight, shape: BoxShape.circle),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(80),
          // child: Image.asset(
          //   imagePath!,
          //   fit: BoxFit.cover,
          // ),
        ));
  }
}
