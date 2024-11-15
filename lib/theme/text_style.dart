import 'package:flutter/material.dart';

const tiny = 12.0;
const small = 12.0;
const medium = 16.0;
const semi = 20.0;
const large = 25.0;
const bold =36.0;
const veryBold = 45.0;
const String font = "Gilroy";

TextStyle smallText(Color colors) => TextStyle(
  color: colors,
  fontSize: small,
  height: 1.5,
  fontFamily: font,
  fontWeight: FontWeight.w500,
);

TextStyle tinyText(Color colors) => TextStyle(
  color: colors,
  fontSize: tiny,
  fontFamily: font,
  height: 1.5,
  fontWeight: FontWeight.w600,
);


TextStyle smallBold(Color colors) => TextStyle(
  color: colors,
  fontSize: small,
  height: 1.5,
  fontFamily: font,
  fontWeight: FontWeight.w600,
);

TextStyle mediumText(Color colors) => TextStyle(
  color: colors,
  fontSize: medium,
  height: 1.5,
  fontFamily: font,
  fontWeight: FontWeight.w400,
);


TextStyle mediumSemiBold(Color colors) => TextStyle(
    fontSize: semi,
    fontFamily: font,
    height: 1.5,
    fontWeight: FontWeight.w600,
    color: colors
);

TextStyle mediumBold(Color colors) => TextStyle(
  color: colors,
  fontSize: medium,
  fontFamily: font,
  height: 1.5,
  fontWeight: FontWeight.w600,
);

TextStyle largeText(Color colors) => TextStyle(
  color: colors,
  fontSize: large,
  fontFamily: font,
  height: 1.5,
  fontWeight: FontWeight.w600,
);


TextStyle boldText(Color colors) => TextStyle(
  color: colors,
  fontSize: bold,
  fontFamily: font,
  fontWeight: FontWeight.w600,
);


TextStyle veryBoldText(Color colors) => TextStyle(
    fontSize: veryBold,
    fontFamily: font,
    fontWeight: FontWeight.w700,
    color: colors
);
