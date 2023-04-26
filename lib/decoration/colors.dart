import 'package:flutter/material.dart';

abstract class SmartyColors {
  static Color primary = const Color(0xFF1F75FE);
  static Color primary80 = const Color(0xFF1F75FE).withOpacity(0.8);
  static Color primary60 = const Color(0xFF1F75FE).withOpacity(0.6);
  static Color primary30 = const Color(0xFF1F75FE).withOpacity(0.3);

  static Color secondary = const Color(0xFF0063B2);
  static Color secondary80 = const Color(0xFF0063B2).withOpacity(0.8);
  static Color secondary60 = const Color(0xFF0063B2).withOpacity(0.6);
  static Color secondary30 = const Color(0xFF0063B2).withOpacity(0.3);
  static Color secondary10 = const Color(0xFF0063B2).withOpacity(0.1);

  static Color tertiary = const Color(0xFFFFFFFF);
  static Color tertiary80 = const Color(0xFFFFFFFF).withOpacity(0.8);
  static Color tertiary60 = const Color(0xFFFFFFFF).withOpacity(0.6);
  static Color tertiary30 = const Color(0xFFFFFFFF).withOpacity(0.3);

  static Color white = Color.fromARGB(255, 255, 255, 255);
  static Color white100 = const Color(0xFFFFFFFF).withOpacity(1.0);
  static Color white90 = const Color(0xFFFFFFFF).withOpacity(0.9);
  static Color white80 = const Color(0xFFFFFFFF).withOpacity(0.8);
  static Color white60 = const Color(0xFFFFFFFF).withOpacity(0.6);
  static Color white30 = const Color(0xFFFFFFFF).withOpacity(0.3);


  static Color grey = const Color(0xFF212121);
  static Color grey80 = const Color(0xFF212121).withOpacity(0.8);
  static Color grey60 = const Color(0xFF212121).withOpacity(0.6);
  static Color grey30 = const Color(0xFF212121).withOpacity(0.3);
  static Color grey10 = const Color(0xFF212121).withOpacity(0.1);

  static Color success = const Color(0xFF7EFAB9);
  static Color success80 = const Color(0xFF7EFAB9).withOpacity(0.8);
  static Color success60 = const Color(0xFF7EFAB9).withOpacity(0.6);
  static Color success30 = const Color(0xFF7EFAB9).withOpacity(0.3);

  static Color error = const Color(0xFFB00020);
  static Color error80 = const Color(0xFFB00020).withOpacity(0.8);
  static Color error60 = const Color(0xFFB00020).withOpacity(0.6);
  static Color error30 = const Color(0xFFB00020).withOpacity(0.3);

  static Color alert = const Color.fromARGB(255, 232, 49, 49);
  static Color alert80 = const Color.fromARGB(255, 232, 49, 49).withOpacity(0.8);
  static Color alert60 = const Color.fromARGB(255, 232, 49, 49).withOpacity(0.6);
  static Color alert30 = const Color.fromARGB(255, 232, 49, 49).withOpacity(0.3);

  static Color black = const Color(0xFF000000);
  static Color black30 = const Color(0xFF000000).withOpacity(0.3);
  static Color black60 = const Color(0xFF000000).withOpacity(0.6);
  static Color black80 = const Color(0xFF000000).withOpacity(0.8);

  static Color isActived =  Colors.lightBlueAccent;
}

