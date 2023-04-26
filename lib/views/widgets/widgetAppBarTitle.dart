import 'package:flutter/material.dart';

import '../../../decoration/typography.dart';

class widgetAppBarTitle extends StatelessWidget {
  const widgetAppBarTitle({
    Key? key,
    required this.currentPage,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String currentPage;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: myText(title, 17, Colors.black, 0.5, 800, ''),
        ),
        subtitle == ''
            ? Column()
            : SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: myText(subtitle, 14, Colors.black, 0.5, 600, ''),
              ),
        subtitle == ''
            ? Column()
            : SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: myText(currentPage, 8, Colors.black, 0.5, 600, ''),
              ),
      ],
    );
  }
}
