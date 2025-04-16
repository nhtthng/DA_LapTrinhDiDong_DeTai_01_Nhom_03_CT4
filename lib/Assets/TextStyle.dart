import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

class TextstyleHelper {
  static TextStyle nunito({
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,

  }){
    return GoogleFonts.nunito(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
    );
  }


}