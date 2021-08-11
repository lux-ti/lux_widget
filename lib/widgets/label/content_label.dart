import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';

class XContentLabel extends StatelessWidget {
  final String topName;
  final String name;
  final Color? colorTop;
  final Color? colorName;

  const XContentLabel({Key? key, required this.topName, required this.name, this.colorTop, this.colorName,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          topName,
          style: TextStyle(letterSpacing: 3,
            color: colorTop ??xTheme.backgroundColor,
            fontSize: 12,fontWeight: FontWeight.w600
          ),
        ),
       
        Text(name,
            style: TextStyle(
                color: colorName ??xTheme.backgroundColor,
                fontSize: 24,
                fontWeight: FontWeight.w300)),
      ],
    );
  }
}
