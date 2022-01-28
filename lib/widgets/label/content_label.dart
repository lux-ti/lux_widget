import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';

class XContentLabel extends StatelessWidget {
  final String topName;
  final String name;
  final Color? colorTop;
  final double? nameWidth;
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
    this.nameWidth,
    this.overflow,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          topName,
          style: TextStyle(
              letterSpacing: topSpace,
              color: colorTop ?? xTheme.backgroundColor,
              fontSize: topSize,
              fontWeight: topWeight),
        ),
        Container(
          width: nameWidth,
          child: Text(name,
              maxLines: maxLines,
              style: TextStyle(
                  overflow: overflow,
                  letterSpacing: nameSpace,
                  color: colorName ?? xTheme.backgroundColor,
                  fontSize: nameSize,
                  fontWeight: nameWeight)),
        ),
      ],
    );
  }
}
