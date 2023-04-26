import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'typography.dart';

TextStyle myTextStyle(
    double size, Color color, double opacity, FontWeight fontWeight) {
  return GoogleFonts.baiJamjuree(
    fontSize: size,
    color: color.withOpacity(opacity),
    fontWeight: fontWeight,
  );
}


class myTextGroup extends StatelessWidget {
  final String title;
  final String subtitle;
  const myTextGroup({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          myText(title, 14, Colors.black, 0.4, 800, 'center'),
          myText(subtitle, 14, Colors.black, 0.4, 800, 'center'),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
abstract class myCard {
  static EdgeInsets margin = const EdgeInsets.only(left: 10, right: 10);
  static EdgeInsets padding =
      const EdgeInsets.only(top: 20, bottom: 20, left: 15, right: 15);
  static BoxDecoration decoration = BoxDecoration(
    color: SmartyColors.white,
    boxShadow: [
      BoxShadow(
        blurRadius: 15.0,
        color: Colors.black.withOpacity(0.1),
      )
    ],
    borderRadius: BorderRadius.circular(8),
  );
}

// ignore: camel_case_types
class myTabBarView {
  static EdgeInsets margin = const EdgeInsets.all(15);
  static EdgeInsets padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 10);

  static BoxDecoration decoration = BoxDecoration(
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        blurRadius: 15.0,
        color: Colors.black.withOpacity(0.1),
      )
    ],
    borderRadius: BorderRadius.circular(10),
  );
}
