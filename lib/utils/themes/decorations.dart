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
