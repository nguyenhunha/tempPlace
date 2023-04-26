import 'package:flutter/material.dart';

import '../../../../../decoration/shadow.dart';


class widgetCustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChange;
  final double width;
  final double heigth;

  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  widgetCustomSwitch({
    required this.value,
    required this.onChange,
    required this.width,
    required this.heigth,
  });

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<widgetCustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.value == false ? widget.onChange(true) : widget.onChange(false);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.only(top: 1, bottom: 1),
        width: widget.width,
        height: widget.heigth,
        decoration: BoxDecoration(
            color: widget.value ? Colors.blue : Colors.grey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(60),
            boxShadow: [
              boxShadow,
            ]),
        child: AnimatedAlign(
          duration: const Duration(milliseconds: 200),
          alignment:
              widget.value ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            width: widget.heigth,
            height: widget.heigth,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
