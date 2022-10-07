import 'package:flutter/material.dart';

import 'colors.dart';

InputDecoration decoInput(String? text, IconData iconData, Color fillColor) =>
    InputDecoration(
      filled: true,
      fillColor: fillColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0),
        borderSide: BorderSide.none,
      ),
      labelText: text,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      prefixIcon: Icon(
        iconData,
        color: CustomColors.greyDark,
      ),
    );

BoxDecoration decoWhiteBG() => const BoxDecoration(
      color: CustomColors.primaryWhite,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40.0),
        topRight: Radius.circular(40.0),
      ),
    );
