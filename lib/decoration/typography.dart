import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class TextStyles {
  static TextStyle headline1 = GoogleFonts.baiJamjuree(
    fontSize: 60,
    fontWeight: FontWeight.w400,
    color: SmartyColors.black,
    height: 1.4,
  );

  static TextStyle headline2 = GoogleFonts.baiJamjuree(
    fontSize: 48,
    fontWeight: FontWeight.w400,
    color: SmartyColors.black,
    height: 1.4,
  );

  static TextStyle headline3 = GoogleFonts.baiJamjuree(
    fontSize: 34,
    fontWeight: FontWeight.w400,
    color: SmartyColors.black,
    height: 1.4,
  );

  static TextStyle headline4 = GoogleFonts.baiJamjuree(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: SmartyColors.black,
    height: 1.4,
  );

  static TextStyle title = GoogleFonts.baiJamjuree(
    fontSize: 22,
    fontWeight: FontWeight.w400,
    color: SmartyColors.black60,
    height: 1.4,
  );

  static TextStyle subTabBarTitle = GoogleFonts.baiJamjuree(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: SmartyColors.black30,
    height: 1.4,
  );

  static TextStyle body = GoogleFonts.baiJamjuree(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: SmartyColors.black,
    height: 1.4,
  );

  static TextStyle cardText = GoogleFonts.baiJamjuree(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: SmartyColors.black,
    height: 1.4,
  );

  static TextStyle cardText2 = GoogleFonts.baiJamjuree(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: SmartyColors.black,
    height: 1.4,
  );

  static TextStyle subtitle = GoogleFonts.baiJamjuree(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: SmartyColors.black,
    height: 1.4,
  );

  static TextStyle info = GoogleFonts.baiJamjuree(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: SmartyColors.black,
    height: 1.4,
  );

  static TextStyle iconText = GoogleFonts.baiJamjuree(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: SmartyColors.black,
    height: 1.4,
  );

  static TextStyle consumption = GoogleFonts.baiJamjuree(
    fontSize: 16,
    fontWeight: FontWeight.w800,
    color: SmartyColors.black,
    height: 1.4,
  );

  static TextStyle timeText = GoogleFonts.baiJamjuree(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.red,
  );

  static TextStyle connected = GoogleFonts.baiJamjuree(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.blueAccent,
  );

  static TextStyle isOn = GoogleFonts.baiJamjuree(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.green,
  );

  static TextStyle isOff = GoogleFonts.baiJamjuree(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: SmartyColors.grey60,
  );

  static TextStyle isTitleActivated = GoogleFonts.baiJamjuree(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: Colors.green,
  );

  static TextStyle isTitleDeactivated = GoogleFonts.baiJamjuree(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: Colors.black.withOpacity(0.4),
  );
  static TextStyle isSubTitleActivated = GoogleFonts.baiJamjuree(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: Colors.green,
  );

  static TextStyle isSubTitleDeactivated = GoogleFonts.baiJamjuree(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: SmartyColors.grey60,
  );

  static TextStyle fs10 = GoogleFonts.baiJamjuree(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: SmartyColors.grey60,
  );
}

double myAddressTabBarHeaderIconSize() {
  return 18.0;
}

TextStyle myTextStyle(
    double size, Color color, double opacity, FontWeight fontWeight) {
  return GoogleFonts.baiJamjuree(
    fontSize: size,
    color: color.withOpacity(opacity),
    fontWeight: fontWeight,
  );
}

Text myText(
  String text,
  double size,
  Color color,
  double opacity,
  int fWeight,
  String align,
) {
  final TextAlign textAlign;
  final fontWeight;
  switch (text) {
    case 'L':
      textAlign = TextAlign.left;
      break;
    case 'R':
      textAlign = TextAlign.right;
      break;
    default:
      textAlign = TextAlign.center;
      break;
  }
  switch (fWeight) {
    case 100:
      fontWeight = FontWeight.w100;
      break;
    case 200:
      fontWeight = FontWeight.w200;
      break;
    case 300:
      fontWeight = FontWeight.w300;
      break;
    case 400:
      fontWeight = FontWeight.w400;
      break;
    case 500:
      fontWeight = FontWeight.w500;
      break;
    case 600:
      fontWeight = FontWeight.w600;
      break;
    case 700:
      fontWeight = FontWeight.w700;
      break;
    default:
      fontWeight = FontWeight.w800;
      break;
  }
  return Text(
    text,
    style: GoogleFonts.baiJamjuree(
      fontSize: size,
      color: color.withOpacity(opacity),
      fontWeight: fontWeight,
    ),
    textAlign: textAlign,
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

class myTextPreView extends StatelessWidget {
  final String currentWidget;
  final String title;
  // final String subtitle;
  const myTextPreView({
    Key? key,
    required this.currentWidget,
    required this.title,
    // required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  myText(title, 14, Colors.black, 0.7, 600, 'L'),
                  myText(currentWidget, 8, Colors.black, 0.7, 600, 'L'),
                ],
              ),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}

class myScrollHeaderText extends StatelessWidget {
  final String text;
  // final String subtitle;
  const myScrollHeaderText({
    Key? key,
    required this.text,
    // required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: myText(text, 16, Colors.black, 0.7, 600, ''),
    );
  }
}
class myScrollSubHeaderText extends StatelessWidget {
  final String text;
  // final String subtitle;
  const myScrollSubHeaderText({
    Key? key,
    required this.text,
    // required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: myText(text, 12, Colors.black, 0.5, 500, ''),
    );
  }
}
