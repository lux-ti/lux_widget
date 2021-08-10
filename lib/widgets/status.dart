import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';

class XStatus extends StatelessWidget {
  final String? name;
  final Color? color;

  const XStatus({ Key? key, this.name, this.color }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);

    return Text(
      '',
      style: TextStyle(
        color: color ?? xTheme.dangeColor,
        fontSize: 12,
        fontWeight: FontWeight.w800,
        
      ),
    );
  }
}