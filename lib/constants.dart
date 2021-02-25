import 'package:flutter/painting.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final  Color offWhite =Color(0xffEAE8D8) ;
final  Color blue =Color(0xff1D3D59) ;
final  Color orrange =Color(0xffFE6F42) ;
final  Color yellow =Color(0xffFDB93A) ;



final Color bgColor = Color(0xffF9F9F9);
final Color path1Color = Color(0xff1D3D59);
final Color getStartedColorStart = Color(0xff54D579);
final Color getStartedColorEnd = Color(0xff00AABF);

final kHintTextStyle = GoogleFonts.cairo(
  textStyle: TextStyle(
    color: Colors.white54,
  ),
);

final kLabelStyle = GoogleFonts.cairo(
  textStyle: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  ),
);

final kBoxDecorationStyle = BoxDecoration(
  color: Color(0xFF6CA8F1).withOpacity(0.3),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);