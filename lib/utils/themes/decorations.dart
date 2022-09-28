import 'package:flutter/material.dart';

import 'colors.dart';

InputDecoration decoInput(String? text, IconData iconData) => InputDecoration(
      filled: true,
      fillColor: CustomColors.bgWhite,
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
