import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';

class XContentLabel extends StatelessWidget {
  final String topName;
  final String name;
  final Color? colorTop;
  final double? topNameWidth;
  final Color? colorName;
  final double? topSize;
  final double? nameSize;
  final FontWeight? topWeight;
  final FontWeight? nameWeight;
  final double? topSpace;
  final double? nameSpace;
  final TextOverflow? overflow;
  final int? maxLines;

  const XContentLabel({
    Key? key,
    required this.topName,
    required this.name,
    this.colorTop,
    this.colorName,
    this.topSize,
    this.nameSize,
    this.topWeight,
    this.nameWeight,
    this.topSpace,
    this.nameSpace,
    this.topNameWidth,
    this.overflow,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: topNameWidth,
          child: Text(
            topName,
            maxLines: maxLines,
            style: TextStyle(
                letterSpacing: topSpace,
                overflow: overflow,
                color: colorTop ?? xTheme.backgroundColor,
                fontSize: topSize,
                fontWeight: topWeight),
          ),
        ),
        Text(name,
            style: TextStyle(
                letterSpacing: nameSpace,
                color: colorName ?? xTheme.backgroundColor,
                fontSize: nameSize,
                fontWeight: nameWeight)),
      ],
    );
  }
}
