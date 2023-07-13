import 'package:chat_app_v1/utils/constants/colors.dart';
import 'package:chat_app_v1/utils/constants/consts.dart';
import 'package:flutter/material.dart';

dynamic screenWiseSize(size, difference) {
  return height > kSmallDeviceSizeLimit ? size : size - difference;
}

TextStyle h1TextStyle(Color color) {
  return TextStyle(
      fontFamily: 'Euclid',
      fontWeight: FontWeight.w500,
      fontSize: screenWiseSize(h36, 2),
      color: color);
}

TextStyle p14MediumTextStyle(Color color) {
  return TextStyle(
      fontFamily: 'Euclid Regular',
      fontWeight: FontWeight.w500,
      fontSize: screenWiseSize(h14, 2),
      color: color);
}

//* info: remove extra padding from TextButton
ButtonStyle? kTextButtonStyle = TextButton.styleFrom(
  padding: EdgeInsets.zero,
  minimumSize: Size.zero,
  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  splashFactory: InkSplash.splashFactory,
);

//* info:: box border
BoxBorder? kMainBoxBorder = Border.all(color: cOutLineColor, width: 1);
BoxBorder? kThinOutlinedBoxBorder = Border.all(color: cOutLineColor, width: .5);
BoxBorder? kThinMainBoxBorder = Border.all(color: cTextPrimaryColor, width: .5);
BoxBorder? kPrimaryBoxBorder = Border.all(color: cPrimaryColor, width: 1);
BoxBorder? kWhiteBoxBorder = Border.all(color: cWhiteColor, width: 1);
BoxBorder? kRedAccentBoxBorder = Border.all(color: cRedAccentColor, width: 1);

ButtonStyle? kElevatedButtonStyle = ButtonStyle(
  alignment: Alignment.center,
  // textStyle: MaterialStateProperty.all(p16MediumTextStyle(cWhiteColor)),
  elevation: MaterialStateProperty.all(0),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kButtonBorderRadius)),
  ),
  splashFactory: InkSplash.splashFactory,
  backgroundColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return cTextSecondaryColor;
    }
    return cPrimaryColor;
  }),
);

LinearGradient kPrimaryCircleGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    const Color(0xFF3D5BF6).withOpacity(.15),
    const Color(0xFF3D5BF6).withOpacity(.05),
  ],
);

LinearGradient kRedCircleGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    cRedAccentColor.withOpacity(.15),
    cRedAccentColor.withOpacity(.05),
    // cRedAccentColor,
  ],
);

const kPopTextStyle = TextStyle(fontSize: 20.0, color: Colors.white);
const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);