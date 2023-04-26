import 'package:flutter/material.dart';

import '../../../decoration/colors.dart';
import '../../../decoration/typography.dart';


class widgetDetailButtonTabBarHeader extends StatelessWidget {
  final String name;
  final int selectedIndex;
  final int index;
  const widgetDetailButtonTabBarHeader({
    Key? key,
    required this.selectedIndex,
    required this.name,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // showConsole2('WidgetDetailButtonTabBarHeader', 2);
    return Container(
      width: 55,
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: selectedIndex == index
            ? SmartyColors.primary
            : SmartyColors.secondary10,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          name,
          style: myTextStyle(12, Colors.red, 0.8, FontWeight.w800).copyWith(
              color: selectedIndex == index
                  ? SmartyColors.tertiary
                  : SmartyColors.primary60),
        ),
      ),
    );
  }
}
