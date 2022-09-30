import 'package:FitnessPassport/utils/themes/colors.dart';
import 'package:flutter/material.dart';

/// reference to font sizes in styles
///
/// bold = w700
/// normal = w400
/// thin = w100
/// extra-light = w200
/// light = w300
/// medium = w500
/// semi-bold = w600
/// extra-bold = w800
/// black/thick = w900
///

/// can have semi bold, medium and regular
const TextStyle tHeader1 = TextStyle(
  fontSize: 26.0,
  fontWeight: FontWeight.w700,
  // color: Colors.white,
  fontFamily: "Arial",
);

/// can have semi bold, medium and regular
const TextStyle tHeader2 = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.w700,
  fontFamily: "Arial",
);

/// can have semi bold, medium and regular
const TextStyle tHeader3 = TextStyle(
  fontSize: 22.0,
  fontWeight: FontWeight.w700,
  fontFamily: "Arial",
);

/// can have semi bold, medium and regular
const TextStyle tHeader4 = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.w700,
  fontFamily: "Arial",
);

/// can have semi bold, medium and regular
const TextStyle tSubTitle1 = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.w700,
  fontFamily: "Arial",
);

const TextStyle tSubTitle2 = TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.w400,
  fontFamily: "Arial",
  // color: CustomColors.white01,
);

/// can have semi bold, medium and regular
const TextStyle tLargeText = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w700,
  fontFamily: "Arial",
);

/// can have semi bold, medium and regular
const TextStyle tMediumText1 = TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.w700,
  fontFamily: "Arial",
);

const TextStyle tMediumText2 = TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.w400,
  fontFamily: "Arial",
);

/// can have semi bold, medium and regular
const TextStyle tSmallText = TextStyle(
  fontSize: 12.0,
  fontWeight: FontWeight.w700,
  fontFamily: "Arial",
  // color: CustomColors.green600,
);

/// can have semi bold, medium and regular
const TextStyle tCaption = TextStyle(
  fontSize: 10.0,
  fontWeight: FontWeight.w700,
  fontFamily: "Arial",
  // color: CustomColors.mDarkBlue,
);

//
// const TextStyle tText = TextStyle(
//   fontSize: 20.0,
//   fontWeight: FontWeight.w500,
//   fontFamily: "Livvic",
//   // color: CustomColors.grey800,
// );
//
// const TextStyle tBody3 = TextStyle(
//   fontSize: 20.0,
//   fontWeight: FontWeight.w300,
//   fontFamily: "Livvic",
//   // color: CustomColors.grey700,
// );
//
// const TextStyle tBody1 = TextStyle(
//   fontSize: 18.0,
//   fontWeight: FontWeight.w500,
//   fontFamily: "Livvic",
//   // color: CustomColors.mGrey,
// );
//
// const TextStyle tBody2 = TextStyle(
//   fontSize: 18.0,
//   fontWeight: FontWeight.w300,
//   fontFamily: "Livvic",
//   // color: CustomColors.grey700,
// );
//
// const TextStyle tBody5 = TextStyle(
//   fontSize: 18.0,
//   fontWeight: FontWeight.w600,
//   fontFamily: "Livvic",
// );
//
// const TextStyle tBody4 = TextStyle(
//   fontSize: 16.0,
//   fontWeight: FontWeight.w600,
//   fontFamily: "Livvic",
// );
// const TextStyle tBody6 = TextStyle(
//   fontSize: 16.0,
//   fontWeight: FontWeight.w500,
//   fontFamily: "Livvic",
//   // color: CustomColors.grey700,
// );
//
const TextStyle tButtonNormal = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.normal,
  fontFamily: "Arial",
);

const TextStyle tButtonSmall = TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.bold,
  fontFamily: "Arial",
);

const TextStyle tButtonSmallBack = TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.bold,
  fontFamily: "Arial",
  // color: CustomColors.grey700
);

const TextStyle tButtonBack = TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.bold,
  fontFamily: "Arial",
  // color: CustomColors.grey700,
);

const TextStyle tButtonMedium = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
  fontFamily: "Arial",
);

const TextStyle tButtonMedium2 = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w500,
  fontFamily: "Arial",
);

const TextStyle tButtonLarge = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.w700,
  fontFamily: "Arial",
  // color: CustomColors.mDarkBlue,
);
//
// const TextStyle tError = TextStyle(
//   fontSize: 14.0,
//   fontWeight: FontWeight.normal,
//   fontFamily: "Livvic",
//   // color: CustomColors.mOrange,
// );
//
// const TextStyle tFloatLabel = TextStyle(
//   fontSize: 14.0,
//   fontWeight: FontWeight.w600,
//   fontFamily: "Livvic",
//   // color: CustomColors.grey700,
// );
//
// const TextStyle tLinked = TextStyle(
//   fontSize: 16.0,
//   fontWeight: FontWeight.w600,
//   decoration: TextDecoration.underline,
//   fontFamily: "Livvic",
//   // color: CustomColors.blue500,
// );
//
// const TextStyle tLinked2 = TextStyle(
//   fontSize: 18.0,
//   fontWeight: FontWeight.w500,
//   decoration: TextDecoration.underline,
//   fontFamily: "Livvic",
//   // color: CustomColors.blue500,
// );
//
// const TextStyle tBottomNav = TextStyle(
//   fontSize: 10.0,
//   fontWeight: FontWeight.w700,
//   fontFamily: "Livvic",
// );
//
// const TextStyle tButtonGreen = TextStyle(
//   fontSize: 16.0,
//   fontWeight: FontWeight.w700,
//   fontFamily: "Livvic",
// );
//
// const TextStyle tfieldText = TextStyle(
//   fontSize: 14.0,
//   fontWeight: FontWeight.w500,
//   fontFamily: "Livvic",
//   // color: CustomColors.mOrange,
// );
//
// const TextStyle tListItem = TextStyle(
//   fontSize: 16.0,
//   fontWeight: FontWeight.w700,
//   fontFamily: "Livvic",
//   // color: CustomColors.blue700,
// );
//
// const TextStyle tProfPic = TextStyle(
//   fontSize: 24.0,
//   fontWeight: FontWeight.w700,
//   fontFamily: "SF Pro Display",
//   // color: CustomColors.mDarkBlue,
// );
//
// const TextStyle tSubtitle = TextStyle(
//   fontSize: 14.0,
//   fontWeight: FontWeight.w600,
//   fontFamily: "Livvic",
//   // color: CustomColors.blue500,
// );
