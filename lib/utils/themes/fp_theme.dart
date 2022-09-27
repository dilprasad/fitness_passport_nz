import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FPTheme {
  FPTheme._();

  //only light theme is defined in the app
  static final ThemeData lightTheme = ThemeData(
    //1
    //2
    colorScheme: const ColorScheme.light(
        // primary: CustomColors.mBlack,
        // primaryVariant: CustomColors.mDarkBlue,
        // secondary: CustomColors.mDarkBlue,
        // onPrimary: CustomColors.mBlack,
        // error: CustomColors.mOrange,
        ),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        // statusBarColor: CustomColors.mDarkBlue,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
      iconTheme: IconThemeData(
        // color: CustomColors.mGrey,
        size: 32.0,
      ),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    // primaryColor: CustomColors.mBlack,
    // scaffoldBackgroundColor: CustomColors.mWhite,
    // fontFamily: 'Livvic',
    dividerColor: Colors.transparent,
    splashColor: Colors.transparent,
    //3
    buttonTheme: ButtonThemeData(
      // 4
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      // buttonColor: CustomColors.mGreen,
    ),
    checkboxTheme: CheckboxThemeData(
      // side: BorderSide(width: 2.0, color: CustomColors.grey600),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      visualDensity: const VisualDensity(vertical: 2.0, horizontal: 2.0),
      // fillColor: MaterialStateProperty.all(CustomColors.green600),
      checkColor: MaterialStateProperty.all(Colors.white),
    ),
  );
}
